package com.xiaomi.mistatistic.sdk;

import com.xiaomi.mistatistic.sdk.data.HttpEvent;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketAddress;

public class MIStatsSocketHelper {
    public static void connect(Socket socket, SocketAddress socketAddress) throws IOException {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            socket.connect(socketAddress);
            URLStatsRecorder.addHttpEvent(new HttpEvent(socketAddress.toString(), System.currentTimeMillis() - currentTimeMillis));
        } catch (IOException e) {
            URLStatsRecorder.addHttpEvent(new HttpEvent(socketAddress.toString(), e.getClass().getSimpleName()));
            throw e;
        }
    }

    public static void connect(Socket socket, SocketAddress socketAddress, int i) throws IOException {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            socket.connect(socketAddress, i);
            URLStatsRecorder.addHttpEvent(new HttpEvent(socketAddress.toString(), System.currentTimeMillis() - currentTimeMillis));
        } catch (IOException e) {
            URLStatsRecorder.addHttpEvent(new HttpEvent(socketAddress.toString(), e.getClass().getSimpleName()));
            throw e;
        }
    }
}
