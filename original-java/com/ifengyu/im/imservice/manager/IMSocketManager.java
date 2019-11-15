package com.ifengyu.im.imservice.manager;

import android.annotation.SuppressLint;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.GeneratedMessageLite;
import com.ifengyu.im.imservice.callback.ListenerQueue;
import com.ifengyu.im.imservice.callback.Packetlistener;
import com.ifengyu.im.imservice.event.SocketEvent;
import com.ifengyu.im.imservice.network.MsgServerHandler;
import com.ifengyu.im.imservice.network.SocketThread;
import com.ifengyu.im.imservice.network.http.IMRetrofitClient;
import com.ifengyu.im.imservice.network.http.entity.MsgServerAddrsEntity;
import com.ifengyu.im.imservice.network.http.entity.MsgServerAddrsEntity.AsInfoListBean;
import com.ifengyu.im.protobuf.base.DataBuffer;
import com.ifengyu.im.protobuf.base.DefaultHeader;
import com.ifengyu.im.protobuf.base.Header;
import com.ifengyu.im.utils.Logger;
import de.greenrobot.event.c;
import io.reactivex.b.f;
import io.reactivex.e.a;
import java.io.InputStream;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBufferInputStream;

public class IMSocketManager extends IMManager {
    private MsgServerAddrsEntity currentMsgAddress;
    private ListenerQueue listenerQueue;
    /* access modifiers changed from: private */
    public Logger logger;
    private SocketThread msgServerThread;
    private SocketEvent socketStatus;

    private static final class Holder {
        /* access modifiers changed from: private */
        public static final IMSocketManager INSTANCE = new IMSocketManager();

        private Holder() {
        }
    }

    public static IMSocketManager instance() {
        return Holder.INSTANCE;
    }

    private IMSocketManager() {
        this.logger = Logger.getLogger(IMSocketManager.class);
        this.listenerQueue = ListenerQueue.instance();
        this.socketStatus = SocketEvent.NONE;
        this.logger.d("login#creating IMSocketManager", new Object[0]);
    }

    public void doOnStart() {
        this.socketStatus = SocketEvent.NONE;
    }

    public void reset() {
        disconnectMsgServer();
        this.socketStatus = SocketEvent.NONE;
        this.currentMsgAddress = null;
    }

    public void triggerEvent(SocketEvent socketEvent) {
        setSocketStatus(socketEvent);
        c.a().g(socketEvent);
    }

    public void sendRequest(GeneratedMessageLite generatedMessageLite, int i, int i2) {
        sendRequest(generatedMessageLite, i, i2, null);
    }

    public void sendRequest(GeneratedMessageLite generatedMessageLite, int i, int i2, Packetlistener packetlistener) {
        int i3;
        try {
            DefaultHeader defaultHeader = new DefaultHeader(i, i2);
            defaultHeader.setLength(generatedMessageLite.getSerializedSize() + 16);
            i3 = defaultHeader.getSeqnum();
            try {
                this.listenerQueue.push(i3, packetlistener);
                this.msgServerThread.sendRequest(generatedMessageLite, defaultHeader);
                return;
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            i3 = 0;
        }
        if (packetlistener != null) {
            packetlistener.onFaild();
        }
        this.listenerQueue.pop(i3);
        this.logger.e("#sendRequest#channel is close!", new Object[0]);
    }

    public void packetDispatch(ChannelBuffer channelBuffer) {
        DataBuffer dataBuffer = new DataBuffer(channelBuffer);
        Header header = new Header();
        header.decode(dataBuffer);
        short commandId = header.getCommandId();
        short serviceId = header.getServiceId();
        short seqnum = header.getSeqnum();
        this.logger.d("dispatch packet, serviceId:%d, commandId:%d", Integer.valueOf(serviceId), Integer.valueOf(commandId));
        CodedInputStream newInstance = CodedInputStream.newInstance((InputStream) new ChannelBufferInputStream(dataBuffer.getOrignalBuffer()));
        Packetlistener pop = this.listenerQueue.pop(seqnum);
        if (pop != null) {
            pop.onSuccess(newInstance);
            return;
        }
        switch (serviceId) {
            case 1:
                IMPacketDispatcher.loginPacketDispatcher(commandId, newInstance);
                return;
            case 2:
                IMPacketDispatcher.buddyPacketDispatcher(commandId, newInstance);
                return;
            case 3:
                IMPacketDispatcher.msgPacketDispatcher(commandId, newInstance);
                return;
            case 4:
                IMPacketDispatcher.groupPacketDispatcher(commandId, newInstance);
                return;
            default:
                this.logger.e("packet#unhandled serviceId:%d, commandId:%d", Integer.valueOf(serviceId), Integer.valueOf(commandId));
                return;
        }
    }

    @SuppressLint({"CheckResult"})
    public void reqMsgServerAddrs() {
        this.logger.d("socket#reqMsgServerAddrs.", new Object[0]);
        IMRetrofitClient.getServiceApi().getMsgServerAddrs().subscribeOn(a.b()).observeOn(io.reactivex.a.b.a.a()).subscribe(new f<MsgServerAddrsEntity>() {
            public void accept(MsgServerAddrsEntity msgServerAddrsEntity) throws Exception {
                IMSocketManager.this.logger.d("socket#req msgAddress onSuccess, response:%s", msgServerAddrsEntity.toString());
                if (msgServerAddrsEntity.getCode() != 0) {
                    IMSocketManager.this.logger.e("login#code is not right:%d, json:%s", Integer.valueOf(msgServerAddrsEntity.getCode()), msgServerAddrsEntity.toString());
                    return;
                }
                IMSocketManager.this.connectMsgServer(msgServerAddrsEntity);
                IMSocketManager.this.triggerEvent(SocketEvent.REQ_MSG_SERVER_ADDRS_SUCCESS);
            }
        }, new f<Throwable>() {
            public void accept(Throwable th) throws Exception {
                IMSocketManager.this.logger.d("socket#req msgAddress Failure, errorResponse:%s", th.toString());
                IMSocketManager.this.triggerEvent(SocketEvent.REQ_MSG_SERVER_ADDRS_FAILED);
            }
        });
    }

    /* access modifiers changed from: private */
    public void connectMsgServer(MsgServerAddrsEntity msgServerAddrsEntity) {
        triggerEvent(SocketEvent.CONNECTING_MSG_SERVER);
        this.currentMsgAddress = msgServerAddrsEntity;
        AsInfoListBean asInfoListBean = (AsInfoListBean) msgServerAddrsEntity.getAs_info_list().get(0);
        String priorIP = asInfoListBean.getPriorIP();
        int port = asInfoListBean.getPort();
        this.logger.i("login#connectMsgServer -> (%s:%d)", priorIP, Integer.valueOf(port));
        if (this.msgServerThread != null) {
            this.msgServerThread.close();
            this.msgServerThread = null;
        }
        this.msgServerThread = new SocketThread(priorIP, port, new MsgServerHandler());
        this.msgServerThread.start();
    }

    public void reconnectMsg() {
        synchronized (IMSocketManager.class) {
            if (this.currentMsgAddress != null) {
                connectMsgServer(this.currentMsgAddress);
            } else {
                disconnectMsgServer();
                IMLoginManager.instance().relogin();
            }
        }
    }

    public void disconnectMsgServer() {
        this.listenerQueue.onDestory();
        this.logger.i("login#disconnectMsgServer", new Object[0]);
        if (this.msgServerThread != null) {
            this.msgServerThread.close();
            this.msgServerThread = null;
            this.logger.i("login#do real disconnectMsgServer ok", new Object[0]);
        }
    }

    public boolean isSocketConnect() {
        if (this.msgServerThread == null || this.msgServerThread.isClose()) {
            return false;
        }
        return true;
    }

    public void onMsgServerConnected() {
        this.logger.i("login#onMsgServerConnected", new Object[0]);
        this.listenerQueue.onStart();
        triggerEvent(SocketEvent.CONNECT_MSG_SERVER_SUCCESS);
        IMLoginManager.instance().reqLoginMsgServer();
    }

    public void onMsgServerDisconn() {
        this.logger.w("login#onMsgServerDisconn", new Object[0]);
        disconnectMsgServer();
        triggerEvent(SocketEvent.MSG_SERVER_DISCONNECTED);
    }

    public void onConnectMsgServerFail() {
        triggerEvent(SocketEvent.CONNECT_MSG_SERVER_FAILED);
    }

    public SocketEvent getSocketStatus() {
        return this.socketStatus;
    }

    public void setSocketStatus(SocketEvent socketEvent) {
        this.socketStatus = socketEvent;
    }
}
