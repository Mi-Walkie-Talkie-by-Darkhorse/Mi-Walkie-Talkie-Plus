package com.mi.mimsgsdk.service;

import android.os.Message;
import android.support.annotation.NonNull;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.base.CustomHandlerThread;
import com.mi.milinkforgame.sdk.client.ClientLog;
import java.util.ArrayList;
import java.util.Iterator;

public class MnsPacketDispatcher extends CustomHandlerThread {
    private static final int MESSAGE_ADD_PACKET_DATA_HANDLER = 0;
    private static final int MESSAGE_PROCESS_PACKET_DATA = 2;
    private static final int MESSAGE_REMOVE_PACKET_DATA_HANDLER = 1;
    private static final String TAG = MnsPacketDispatcher.class.getSimpleName();
    private static MnsPacketDispatcher sInstance = new MnsPacketDispatcher();
    private ArrayList<PacketDataHandler> mPacketDataHandlerList = new ArrayList<>();

    public interface PacketDataHandler {
        boolean isAcceptPacket(@NonNull PacketData packetData);

        boolean processPacketData(@NonNull PacketData packetData);
    }

    public static synchronized MnsPacketDispatcher getInstance() {
        MnsPacketDispatcher mnsPacketDispatcher;
        synchronized (MnsPacketDispatcher.class) {
            if (!sInstance.getHandlerThread().isAlive()) {
                sInstance.destroy();
                sInstance = new MnsPacketDispatcher();
            }
            mnsPacketDispatcher = sInstance;
        }
        return mnsPacketDispatcher;
    }

    private MnsPacketDispatcher() {
        super(TAG, -19);
    }

    public void addPacketDataHandler(PacketDataHandler packetDataHandler) {
        if (packetDataHandler != null) {
            Message obtainMessage = obtainMessage();
            obtainMessage.what = 0;
            obtainMessage.obj = packetDataHandler;
            sendMessage(obtainMessage);
        }
    }

    public void removePacketDataHandler(PacketDataHandler packetDataHandler) {
        if (packetDataHandler != null) {
            Message obtainMessage = obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.obj = packetDataHandler;
            sendMessage(obtainMessage);
        }
    }

    private void notifyAllPacketDataHandler(@NonNull PacketData packetData) {
        Iterator it = this.mPacketDataHandlerList.iterator();
        while (it.hasNext()) {
            PacketDataHandler packetDataHandler = (PacketDataHandler) it.next();
            if (packetDataHandler.isAcceptPacket(packetData)) {
                packetDataHandler.processPacketData(packetData);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void processMessage(Message message) {
        switch (message.what) {
            case 0:
                this.mPacketDataHandlerList.add((PacketDataHandler) message.obj);
                return;
            case 1:
                this.mPacketDataHandlerList.remove((PacketDataHandler) message.obj);
                return;
            case 2:
                notifyAllPacketDataHandler((PacketData) message.obj);
                return;
            default:
                return;
        }
    }

    public void processReceivePacket(PacketData packetData) {
        if (packetData != null) {
            Message obtainMessage = obtainMessage();
            obtainMessage.what = 2;
            obtainMessage.obj = packetData;
            sendMessage(obtainMessage);
            return;
        }
        ClientLog.v(TAG, "processReceivePacket dataList is null");
    }
}
