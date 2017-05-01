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
import com.roomie.UpdateMeetingECF.UpdateMeetingECF;
import com.roomie.UpdateMeetingEvent.UpdateMeetingEvent;
import com.roomieweb.dao.ConnectionFactory;
	
public class KaaClientClass{
	
	public static KaaClient kaaClient;
	final String KEYS_DIR ="keys_for_java_event_demo";
	
	

	public  KaaClientClass(Integer roomId) throws IOException, InterruptedException{
					
					
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
						System.out.println("Kaa client started");
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
			UpdateMeetingECF updateMeetingECF = eventFamilyFactory.getUpdateMeetingECF();
		
				
			final CountDownLatch attachLatch = new CountDownLatch(1);
				kaaClient.attachUser("Trustful Verifier", "44533909101578045284", new UserAttachCallback()
			{
			    @Override
			    public void onAttachResult(UserAttachResponse response) {
			        System.out.println("Attach response" + response.getResult());
			        attachLatch.countDown();
			    }
			});
			attachLatch.await();
			
			
			List<String> FQNs = new LinkedList<String>();
			FQNs.add(UpdateMeetingEvent.class.getName());
			
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
			UpdateMeetingEvent e = new UpdateMeetingEvent();
			e.setRoomId(roomId);
			e.setSource(1);
			updateMeetingECF.sendEventToAll(e);
			updateMeetingECF.sendEventToAll(e);
			
			System.out.println("Event sent");
			
			//UpdateMeetingEvent.add(MeetingEvent.class.getName());
			
			final CountDownLatch updateMeetingReceiversLatch = new CountDownLatch(1);
			System.out.println("Before find listeners");
		
		
	}
}
