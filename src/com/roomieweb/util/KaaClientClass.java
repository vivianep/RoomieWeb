package com.roomieweb.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.CountDownLatch;

import org.kaaproject.kaa.client.DesktopKaaPlatformContext;
import org.kaaproject.kaa.client.Kaa;
import org.kaaproject.kaa.client.KaaClient;
import org.kaaproject.kaa.client.KaaClientProperties;
import org.kaaproject.kaa.client.KaaClientStateListener;
import org.kaaproject.kaa.client.SimpleKaaClientStateListener;
import org.kaaproject.kaa.client.event.EventFamilyFactory;
import org.kaaproject.kaa.client.event.FindEventListenersCallback;
import org.kaaproject.kaa.client.event.registration.UserAttachCallback;
import org.kaaproject.kaa.client.exceptions.KaaException;
import org.kaaproject.kaa.common.endpoint.gen.UserAttachResponse;
import com.mysql.jdbc.PreparedStatement;
import com.roomie.UpdateMeetingsECF;
import com.roomie.UpdateMeetingsEvent;
	
public class KaaClientClass{
	
	public static KaaClient kaaClient;
	final String KEYS_DIR ="keys_for_java_event_demo";
	
	

	public  KaaClientClass(Integer meetingId) throws IOException, InterruptedException{
					
					
			//Connection connection = ConnectionFactory.getConnection();	
			CountDownLatch startUpLatch = new CountDownLatch(1);	
			KaaClientProperties endpointProperties = new KaaClientProperties();
		    endpointProperties.setWorkingDirectory(KEYS_DIR);
		    // Create the Kaa desktop context for the application
		   System.out.println("possible problem");
		    DesktopKaaPlatformContext desktopKaaPlatformContext = new DesktopKaaPlatformContext(endpointProperties);
		   // new Desktop
			kaaClient = Kaa.newClient(desktopKaaPlatformContext, new SimpleKaaClientStateListener() {
			@Override
				public void onStarted() {
					System.out.println("Kaa client started on RoomieWebGUI");
					startUpLatch.countDown();
				}
		
				@Override
				public void onStopped() {
					System.out.println("Kaa client stopped");
				}


			},true);
				
			kaaClient.start();
			startUpLatch.await();
			
			System.out.println("Before attaching");
			EventFamilyFactory eventFamilyFactory = kaaClient.getEventFamilyFactory();
			UpdateMeetingsECF updateMeetingECF = eventFamilyFactory.getUpdateMeetingsECF();
		
				
			final CountDownLatch attachLatch = new CountDownLatch(1);
				kaaClient.attachUser("trustful", "24915229817159384361", new UserAttachCallback()
			{
			    @Override
			    public void onAttachResult(UserAttachResponse response) {
			        System.out.println("User attached on RoomieWebGUI with response " + response.getResult());
			        attachLatch.countDown();
			    }
			});
			attachLatch.await();
			
			sendUpdateMeetingEvent(updateMeetingECF,meetingId);
				
	}
	
	public void sendUpdateMeetingEvent(UpdateMeetingsECF updateMeetingECF, int meetingId) throws InterruptedException {
		
		List<String> FQNs = new LinkedList<String>();
		FQNs.add(UpdateMeetingsEvent.class.getName());
		
		final CountDownLatch eventListenersLatch = new CountDownLatch(1);
		
		kaaClient.findEventListeners(FQNs, new FindEventListenersCallback(){
		
			@Override
			public void onEventListenersReceived(List<String> eventListeners) {
				System.out.println("Event listeners received "+ eventListeners.size());
				for( int i =0 ; i<eventListeners.size(); i++)
					System.out.println(eventListeners.get(i));
				eventListenersLatch.countDown();
			}
	
			@Override
			public void onRequestFailed() {
				System.out.println("Failed ");
				
				
			}
			
		
			
		});
		
		eventListenersLatch.await();		
		List<String> MeetingName = new LinkedList<String>();
		UpdateMeetingsEvent e = new UpdateMeetingsEvent();
		e.setWhoRequested(meetingId);
		
		updateMeetingECF.sendEventToAll(e);
		updateMeetingECF.sendEventToAll(e);
		
		System.out.println("Event sent from RoomieWebGUI to RoomieRaspberry");
		
		//UpdateMeetingEvent.add(MeetingEvent.class.getName());
		

		
	}
	
	
}
