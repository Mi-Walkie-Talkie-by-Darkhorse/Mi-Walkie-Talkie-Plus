package com.ifengyu.im.imservice.network;

import com.ifengyu.im.imservice.manager.IMHeartBeatManager;
import com.ifengyu.im.imservice.manager.IMSocketManager;
import com.ifengyu.im.utils.Logger;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelStateEvent;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelHandler;

public class MsgServerHandler extends SimpleChannelHandler {
    private Logger logger = Logger.getLogger(MsgServerHandler.class);

    public void channelConnected(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        super.channelConnected(channelHandlerContext, channelStateEvent);
        this.logger.d("channel#channelConnected", new Object[0]);
        IMSocketManager.instance().onMsgServerConnected();
    }

    public void channelDisconnected(ChannelHandlerContext channelHandlerContext, ChannelStateEvent channelStateEvent) throws Exception {
        this.logger.d("channel#channelDisconnected", new Object[0]);
        super.channelDisconnected(channelHandlerContext, channelStateEvent);
        IMSocketManager.instance().onMsgServerDisconn();
        IMHeartBeatManager.instance().onMsgServerDisconn();
    }

    public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
        super.messageReceived(channelHandlerContext, messageEvent);
        this.logger.d("channel#messageReceived", new Object[0]);
        ChannelBuffer channelBuffer = (ChannelBuffer) messageEvent.getMessage();
        if (channelBuffer != null) {
            IMSocketManager.instance().packetDispatch(channelBuffer);
        }
    }

    public void exceptionCaught(ChannelHandlerContext channelHandlerContext, ExceptionEvent exceptionEvent) throws Exception {
        super.exceptionCaught(channelHandlerContext, exceptionEvent);
        if (exceptionEvent.getChannel() == null || !exceptionEvent.getChannel().isConnected()) {
            IMSocketManager.instance().onConnectMsgServerFail();
        }
        this.logger.e("channel#[网络异常了]exceptionCaught:%s", exceptionEvent.getCause().toString());
    }
}
