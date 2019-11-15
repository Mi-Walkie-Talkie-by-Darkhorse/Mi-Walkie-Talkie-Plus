package org.jboss.netty.channel.socket.http;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.SocketAddress;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.http.HttpStatus;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.channel.Channel;
import org.jboss.netty.channel.ChannelFactory;
import org.jboss.netty.channel.ChannelFuture;
import org.jboss.netty.channel.ChannelFutureListener;
import org.jboss.netty.channel.ChannelHandlerContext;
import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.channel.Channels;
import org.jboss.netty.channel.ExceptionEvent;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.channel.SimpleChannelUpstreamHandler;
import org.jboss.netty.channel.local.DefaultLocalClientChannelFactory;
import org.jboss.netty.channel.local.LocalAddress;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;

public class HttpTunnelingServlet extends HttpServlet {
    static final /* synthetic */ boolean $assertionsDisabled = (!HttpTunnelingServlet.class.desiredAssertionStatus());
    private static final String ENDPOINT = "endpoint";
    static final InternalLogger logger = InternalLoggerFactory.getInstance(HttpTunnelingServlet.class);
    private static final long serialVersionUID = 4259910275899756070L;
    private volatile ChannelFactory channelFactory;
    private volatile SocketAddress remoteAddress;

    private static final class OutboundConnectionHandler extends SimpleChannelUpstreamHandler {
        private final ServletOutputStream out;

        public OutboundConnectionHandler(ServletOutputStream servletOutputStream) {
            this.out = servletOutputStream;
        }

        public void messageReceived(ChannelHandlerContext channelHandlerContext, MessageEvent messageEvent) throws Exception {
            ChannelBuffer channelBuffer = (ChannelBuffer) messageEvent.getMessage();
            synchronized (this) {
                channelBuffer.readBytes((OutputStream) this.out, channelBuffer.readableBytes());
                this.out.flush();
            }
        }

        public void exceptionCaught(ChannelHandlerContext channelHandlerContext, ExceptionEvent exceptionEvent) throws Exception {
            if (HttpTunnelingServlet.logger.isWarnEnabled()) {
                HttpTunnelingServlet.logger.warn("Unexpected exception while HTTP tunneling", exceptionEvent.getCause());
            }
            exceptionEvent.getChannel().close();
        }
    }

    public void init() throws ServletException {
        String initParameter = getServletConfig().getInitParameter(ENDPOINT);
        if (initParameter == null) {
            throw new ServletException("init-param 'endpoint' must be specified.");
        }
        try {
            this.remoteAddress = parseEndpoint(initParameter.trim());
            try {
                this.channelFactory = createChannelFactory(this.remoteAddress);
            } catch (ServletException e) {
                throw e;
            } catch (Exception e2) {
                throw new ServletException("Failed to create a channel factory.", e2);
            }
        } catch (ServletException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new ServletException("Failed to parse an endpoint.", e4);
        }
    }

    /* access modifiers changed from: protected */
    public SocketAddress parseEndpoint(String str) throws Exception {
        if (str.startsWith("local:")) {
            return new LocalAddress(str.substring(6).trim());
        }
        throw new ServletException("Invalid or unknown endpoint: " + str);
    }

    /* access modifiers changed from: protected */
    public ChannelFactory createChannelFactory(SocketAddress socketAddress) throws Exception {
        if (socketAddress instanceof LocalAddress) {
            return new DefaultLocalClientChannelFactory();
        }
        throw new ServletException("Unsupported remote address type: " + socketAddress.getClass().getName());
    }

    public void destroy() {
        try {
            destroyChannelFactory(this.channelFactory);
        } catch (Exception e) {
            if (logger.isWarnEnabled()) {
                logger.warn("Failed to destroy a channel factory.", e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void destroyChannelFactory(ChannelFactory channelFactory2) throws Exception {
        channelFactory2.releaseExternalResources();
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: protected */
    public void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        if (!"POST".equalsIgnoreCase(httpServletRequest.getMethod())) {
            if (logger.isWarnEnabled()) {
                logger.warn("Unallowed method: " + httpServletRequest.getMethod());
            }
            httpServletResponse.sendError(HttpStatus.SC_METHOD_NOT_ALLOWED);
            return;
        }
        ChannelPipeline pipeline = Channels.pipeline();
        ServletOutputStream outputStream = httpServletResponse.getOutputStream();
        pipeline.addLast("handler", new OutboundConnectionHandler(outputStream));
        Channel newChannel = this.channelFactory.newChannel(pipeline);
        ChannelFuture awaitUninterruptibly = newChannel.connect(this.remoteAddress).awaitUninterruptibly();
        if (!awaitUninterruptibly.isSuccess()) {
            if (logger.isWarnEnabled()) {
                Throwable cause = awaitUninterruptibly.getCause();
                logger.warn("Endpoint unavailable: " + cause.getMessage(), cause);
            }
            httpServletResponse.sendError(HttpStatus.SC_SERVICE_UNAVAILABLE);
            return;
        }
        ChannelFuture channelFuture = null;
        try {
            httpServletResponse.setStatus(200);
            httpServletResponse.setHeader("Content-Type", "application/octet-stream");
            httpServletResponse.setHeader(Names.CONTENT_TRANSFER_ENCODING, Values.BINARY);
            outputStream.flush();
            PushbackInputStream pushbackInputStream = new PushbackInputStream(httpServletRequest.getInputStream());
            while (newChannel.isConnected()) {
                try {
                    ChannelBuffer read = read(pushbackInputStream);
                    if (read == null) {
                        break;
                    }
                    channelFuture = newChannel.write(read);
                } catch (EOFException e) {
                }
            }
            if (channelFuture == null) {
                newChannel.close();
            } else {
                channelFuture.addListener(ChannelFutureListener.CLOSE);
            }
        } catch (Throwable th) {
            if (channelFuture == null) {
                newChannel.close();
            } else {
                channelFuture.addListener(ChannelFutureListener.CLOSE);
            }
            throw th;
        }
    }

    private static ChannelBuffer read(PushbackInputStream pushbackInputStream) throws IOException {
        byte[] bArr;
        int read;
        int available = pushbackInputStream.available();
        if (available > 0) {
            bArr = new byte[available];
            read = pushbackInputStream.read(bArr);
        } else if (available != 0) {
            return null;
        } else {
            int read2 = pushbackInputStream.read();
            if (read2 < 0 || pushbackInputStream.available() < 0) {
                return null;
            }
            pushbackInputStream.unread(read2);
            bArr = new byte[pushbackInputStream.available()];
            read = pushbackInputStream.read(bArr);
        }
        if (!$assertionsDisabled && read <= 0) {
            throw new AssertionError();
        } else if (read == bArr.length) {
            return ChannelBuffers.wrappedBuffer(bArr);
        } else {
            return ChannelBuffers.wrappedBuffer(bArr, 0, read);
        }
    }
}
