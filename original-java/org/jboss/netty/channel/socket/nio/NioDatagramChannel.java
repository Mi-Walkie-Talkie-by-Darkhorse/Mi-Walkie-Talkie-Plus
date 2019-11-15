package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.MembershipKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.ChannelSink;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.socket.InternetProtocolFamily;
import org.jboss.netty.util.internal.DetectionUtil;

public class NioDatagramChannel extends AbstractNioChannel<DatagramChannel> implements org.jboss.netty.channel.socket.DatagramChannel {
    private final NioDatagramChannelConfig config = new DefaultNioDatagramChannelConfig((DatagramChannel) this.channel);
    private Map<InetAddress, List<MembershipKey>> memberships;

    public /* bridge */ /* synthetic */ int getInterestOps() {
        return super.getInterestOps();
    }

    public /* bridge */ /* synthetic */ InetSocketAddress getLocalAddress() {
        return super.getLocalAddress();
    }

    public /* bridge */ /* synthetic */ InetSocketAddress getRemoteAddress() {
        return super.getRemoteAddress();
    }

    NioDatagramChannel(ChannelFactory channelFactory, ChannelPipeline channelPipeline, ChannelSink channelSink, NioDatagramWorker nioDatagramWorker, InternetProtocolFamily internetProtocolFamily) {
        super(null, channelFactory, channelPipeline, channelSink, nioDatagramWorker, openNonBlockingChannel(internetProtocolFamily));
        Channels.fireChannelOpen((Channel) this);
    }

    private static DatagramChannel openNonBlockingChannel(InternetProtocolFamily internetProtocolFamily) {
        DatagramChannel datagramChannel;
        try {
            if (DetectionUtil.javaVersion() < 7 || internetProtocolFamily == null) {
                datagramChannel = DatagramChannel.open();
            } else {
                switch (internetProtocolFamily) {
                    case IPv4:
                        datagramChannel = DatagramChannel.open(ProtocolFamilyConverter.convert(internetProtocolFamily));
                        break;
                    case IPv6:
                        datagramChannel = DatagramChannel.open(ProtocolFamilyConverter.convert(internetProtocolFamily));
                        break;
                    default:
                        throw new IllegalArgumentException();
                }
            }
            datagramChannel.configureBlocking(false);
            return datagramChannel;
        } catch (IOException e) {
            throw new ChannelException("Failed to open a DatagramChannel.", e);
        }
    }

    public NioDatagramWorker getWorker() {
        return (NioDatagramWorker) super.getWorker();
    }

    public boolean isBound() {
        return isOpen() && ((DatagramChannel) this.channel).socket().isBound();
    }

    public boolean isConnected() {
        return ((DatagramChannel) this.channel).isConnected();
    }

    /* access modifiers changed from: protected */
    public boolean setClosed() {
        return super.setClosed();
    }

    public NioDatagramChannelConfig getConfig() {
        return this.config;
    }

    /* access modifiers changed from: 0000 */
    public DatagramChannel getDatagramChannel() {
        return (DatagramChannel) this.channel;
    }

    public ChannelFuture joinGroup(InetAddress inetAddress) {
        try {
            return joinGroup(inetAddress, NetworkInterface.getByInetAddress(getLocalAddress().getAddress()), null);
        } catch (SocketException e) {
            return Channels.failedFuture(this, e);
        }
    }

    public ChannelFuture joinGroup(InetSocketAddress inetSocketAddress, NetworkInterface networkInterface) {
        return joinGroup(inetSocketAddress.getAddress(), networkInterface, null);
    }

    public ChannelFuture joinGroup(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2) {
        MembershipKey join;
        if (DetectionUtil.javaVersion() < 7) {
            throw new UnsupportedOperationException();
        } else if (inetAddress == null) {
            throw new NullPointerException("multicastAddress");
        } else if (networkInterface == null) {
            throw new NullPointerException("networkInterface");
        } else {
            if (inetAddress2 == null) {
                try {
                    join = ((DatagramChannel) this.channel).join(inetAddress, networkInterface);
                } catch (Throwable th) {
                    return Channels.failedFuture(this, th);
                }
            } else {
                join = ((DatagramChannel) this.channel).join(inetAddress, networkInterface, inetAddress2);
            }
            synchronized (this) {
                if (this.memberships == null) {
                    this.memberships = new HashMap();
                }
                List list = (List) this.memberships.get(inetAddress);
                if (list == null) {
                    list = new ArrayList();
                    this.memberships.put(inetAddress, list);
                }
                list.add(join);
            }
            return Channels.succeededFuture(this);
        }
    }

    public ChannelFuture leaveGroup(InetAddress inetAddress) {
        try {
            return leaveGroup(inetAddress, NetworkInterface.getByInetAddress(getLocalAddress().getAddress()), null);
        } catch (SocketException e) {
            return Channels.failedFuture(this, e);
        }
    }

    public ChannelFuture leaveGroup(InetSocketAddress inetSocketAddress, NetworkInterface networkInterface) {
        return leaveGroup(inetSocketAddress.getAddress(), networkInterface, null);
    }

    public ChannelFuture leaveGroup(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2) {
        if (DetectionUtil.javaVersion() < 7) {
            throw new UnsupportedOperationException();
        } else if (inetAddress == null) {
            throw new NullPointerException("multicastAddress");
        } else if (networkInterface == null) {
            throw new NullPointerException("networkInterface");
        } else {
            synchronized (this) {
                if (this.memberships != null) {
                    List list = (List) this.memberships.get(inetAddress);
                    if (list != null) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            MembershipKey membershipKey = (MembershipKey) it.next();
                            if (networkInterface.equals(membershipKey.networkInterface()) && ((inetAddress2 == null && membershipKey.sourceAddress() == null) || (inetAddress2 != null && inetAddress2.equals(membershipKey.sourceAddress())))) {
                                membershipKey.drop();
                                it.remove();
                            }
                        }
                        if (list.isEmpty()) {
                            this.memberships.remove(inetAddress);
                        }
                    }
                }
            }
            return Channels.succeededFuture(this);
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.jboss.netty.channel.ChannelFuture block(java.net.InetAddress r4, java.net.NetworkInterface r5, java.net.InetAddress r6) {
        /*
            r3 = this;
            int r0 = org.jboss.netty.util.internal.DetectionUtil.javaVersion()
            r1 = 7
            if (r0 >= r1) goto L_0x000d
            java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
            r0.<init>()
            throw r0
        L_0x000d:
            if (r4 != 0) goto L_0x0017
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "multicastAddress"
            r0.<init>(r1)
            throw r0
        L_0x0017:
            if (r6 != 0) goto L_0x0021
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "sourceToBlock"
            r0.<init>(r1)
            throw r0
        L_0x0021:
            if (r5 != 0) goto L_0x002b
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "networkInterface"
            r0.<init>(r1)
            throw r0
        L_0x002b:
            monitor-enter(r3)
            java.util.Map<java.net.InetAddress, java.util.List<java.nio.channels.MembershipKey>> r0 = r3.memberships     // Catch:{ all -> 0x0063 }
            if (r0 == 0) goto L_0x005d
            java.util.Map<java.net.InetAddress, java.util.List<java.nio.channels.MembershipKey>> r0 = r3.memberships     // Catch:{ all -> 0x0063 }
            java.lang.Object r0 = r0.get(r4)     // Catch:{ all -> 0x0063 }
            java.util.List r0 = (java.util.List) r0     // Catch:{ all -> 0x0063 }
            java.util.Iterator r1 = r0.iterator()     // Catch:{ all -> 0x0063 }
        L_0x003c:
            boolean r0 = r1.hasNext()     // Catch:{ all -> 0x0063 }
            if (r0 == 0) goto L_0x005d
            java.lang.Object r0 = r1.next()     // Catch:{ all -> 0x0063 }
            java.nio.channels.MembershipKey r0 = (java.nio.channels.MembershipKey) r0     // Catch:{ all -> 0x0063 }
            java.net.NetworkInterface r2 = r0.networkInterface()     // Catch:{ all -> 0x0063 }
            boolean r2 = r5.equals(r2)     // Catch:{ all -> 0x0063 }
            if (r2 == 0) goto L_0x003c
            r0.block(r6)     // Catch:{ IOException -> 0x0056 }
            goto L_0x003c
        L_0x0056:
            r0 = move-exception
            org.jboss.netty.channel.ChannelFuture r0 = org.jboss.netty.channel.Channels.failedFuture(r3, r0)     // Catch:{ all -> 0x0063 }
            monitor-exit(r3)     // Catch:{ all -> 0x0063 }
        L_0x005c:
            return r0
        L_0x005d:
            monitor-exit(r3)     // Catch:{ all -> 0x0063 }
            org.jboss.netty.channel.ChannelFuture r0 = org.jboss.netty.channel.Channels.succeededFuture(r3)
            goto L_0x005c
        L_0x0063:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0063 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.channel.socket.nio.NioDatagramChannel.block(java.net.InetAddress, java.net.NetworkInterface, java.net.InetAddress):org.jboss.netty.channel.ChannelFuture");
    }

    public ChannelFuture block(InetAddress inetAddress, InetAddress inetAddress2) {
        try {
            block(inetAddress, NetworkInterface.getByInetAddress(getLocalAddress().getAddress()), inetAddress2);
            return Channels.succeededFuture(this);
        } catch (SocketException e) {
            return Channels.failedFuture(this, e);
        }
    }

    /* access modifiers changed from: 0000 */
    public InetSocketAddress getLocalSocketAddress() throws Exception {
        return (InetSocketAddress) ((DatagramChannel) this.channel).socket().getLocalSocketAddress();
    }

    /* access modifiers changed from: 0000 */
    public InetSocketAddress getRemoteSocketAddress() throws Exception {
        return (InetSocketAddress) ((DatagramChannel) this.channel).socket().getRemoteSocketAddress();
    }

    public ChannelFuture write(Object obj, SocketAddress socketAddress) {
        if (socketAddress == null || socketAddress.equals(getRemoteAddress())) {
            return super.write(obj, null);
        }
        return super.write(obj, socketAddress);
    }
}
