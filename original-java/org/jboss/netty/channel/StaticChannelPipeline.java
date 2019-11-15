package org.jboss.netty.channel;

import com.mi.milinkforgame.sdk.data.Const;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.ConversionUtil;

@Deprecated
public class StaticChannelPipeline implements ChannelPipeline {
    static final InternalLogger logger = InternalLoggerFactory.getInstance(StaticChannelPipeline.class);
    private volatile Channel channel;
    private final StaticChannelHandlerContext[] contexts;
    private final int lastIndex;
    private final Map<String, StaticChannelHandlerContext> name2ctx = new HashMap(4);
    private volatile ChannelSink sink;

    private final class StaticChannelHandlerContext implements ChannelHandlerContext {
        private volatile Object attachment;
        private final boolean canHandleDownstream;
        private final boolean canHandleUpstream;
        private final ChannelHandler handler;
        private final int index;
        private final String name;

        StaticChannelHandlerContext(int i, String str, ChannelHandler channelHandler) {
            if (str == null) {
                throw new NullPointerException(HttpPostBodyUtil.NAME);
            } else if (channelHandler == null) {
                throw new NullPointerException("handler");
            } else {
                this.canHandleUpstream = channelHandler instanceof ChannelUpstreamHandler;
                this.canHandleDownstream = channelHandler instanceof ChannelDownstreamHandler;
                if (this.canHandleUpstream || this.canHandleDownstream) {
                    this.index = i;
                    this.name = str;
                    this.handler = channelHandler;
                    return;
                }
                throw new IllegalArgumentException("handler must be either " + ChannelUpstreamHandler.class.getName() + " or " + ChannelDownstreamHandler.class.getName() + '.');
            }
        }

        public Channel getChannel() {
            return getPipeline().getChannel();
        }

        public ChannelPipeline getPipeline() {
            return StaticChannelPipeline.this;
        }

        public boolean canHandleDownstream() {
            return this.canHandleDownstream;
        }

        public boolean canHandleUpstream() {
            return this.canHandleUpstream;
        }

        public ChannelHandler getHandler() {
            return this.handler;
        }

        public String getName() {
            return this.name;
        }

        public Object getAttachment() {
            return this.attachment;
        }

        public void setAttachment(Object obj) {
            this.attachment = obj;
        }

        public void sendDownstream(ChannelEvent channelEvent) {
            StaticChannelHandlerContext access$000 = StaticChannelPipeline.this.getActualDownstreamContext(this.index - 1);
            if (access$000 == null) {
                try {
                    StaticChannelPipeline.this.getSink().eventSunk(StaticChannelPipeline.this, channelEvent);
                } catch (Throwable th) {
                    StaticChannelPipeline.this.notifyHandlerException(channelEvent, th);
                }
            } else {
                StaticChannelPipeline.this.sendDownstream(access$000, channelEvent);
            }
        }

        public void sendUpstream(ChannelEvent channelEvent) {
            StaticChannelHandlerContext access$100 = StaticChannelPipeline.this.getActualUpstreamContext(this.index + 1);
            if (access$100 != null) {
                StaticChannelPipeline.this.sendUpstream(access$100, channelEvent);
            }
        }
    }

    public StaticChannelPipeline(ChannelHandler... channelHandlerArr) {
        if (channelHandlerArr == null) {
            throw new NullPointerException("handlers");
        } else if (channelHandlerArr.length == 0) {
            throw new IllegalArgumentException("no handlers specified");
        } else {
            StaticChannelHandlerContext[] staticChannelHandlerContextArr = new StaticChannelHandlerContext[channelHandlerArr.length];
            int i = 0;
            while (i < staticChannelHandlerContextArr.length && channelHandlerArr[i] != null) {
                i++;
            }
            if (i == staticChannelHandlerContextArr.length) {
                this.contexts = staticChannelHandlerContextArr;
                this.lastIndex = staticChannelHandlerContextArr.length - 1;
            } else {
                staticChannelHandlerContextArr = new StaticChannelHandlerContext[i];
                this.contexts = staticChannelHandlerContextArr;
                this.lastIndex = i - 1;
            }
            for (int i2 = 0; i2 < i; i2++) {
                ChannelHandler channelHandler = channelHandlerArr[i2];
                String conversionUtil = ConversionUtil.toString(i2);
                StaticChannelHandlerContext staticChannelHandlerContext = new StaticChannelHandlerContext(i2, conversionUtil, channelHandler);
                staticChannelHandlerContextArr[i2] = staticChannelHandlerContext;
                this.name2ctx.put(conversionUtil, staticChannelHandlerContext);
            }
            for (StaticChannelHandlerContext staticChannelHandlerContext2 : staticChannelHandlerContextArr) {
                callBeforeAdd(staticChannelHandlerContext2);
                callAfterAdd(staticChannelHandlerContext2);
            }
        }
    }

    public ChannelFuture execute(Runnable runnable) {
        return getSink().execute(this, runnable);
    }

    public Channel getChannel() {
        return this.channel;
    }

    public ChannelSink getSink() {
        ChannelSink channelSink = this.sink;
        if (channelSink == null) {
            return DefaultChannelPipeline.discardingSink;
        }
        return channelSink;
    }

    public void attach(Channel channel2, ChannelSink channelSink) {
        if (channel2 == null) {
            throw new NullPointerException(Const.PARAM_CHANNEL);
        } else if (channelSink == null) {
            throw new NullPointerException("sink");
        } else if (this.channel == null && this.sink == null) {
            this.channel = channel2;
            this.sink = channelSink;
        } else {
            throw new IllegalStateException("attached already");
        }
    }

    public boolean isAttached() {
        return this.sink != null;
    }

    public void addFirst(String str, ChannelHandler channelHandler) {
        throw new UnsupportedOperationException();
    }

    public void addLast(String str, ChannelHandler channelHandler) {
        throw new UnsupportedOperationException();
    }

    public void addBefore(String str, String str2, ChannelHandler channelHandler) {
        throw new UnsupportedOperationException();
    }

    public void addAfter(String str, String str2, ChannelHandler channelHandler) {
        throw new UnsupportedOperationException();
    }

    public void remove(ChannelHandler channelHandler) {
        throw new UnsupportedOperationException();
    }

    public ChannelHandler remove(String str) {
        throw new UnsupportedOperationException();
    }

    public <T extends ChannelHandler> T remove(Class<T> cls) {
        throw new UnsupportedOperationException();
    }

    public ChannelHandler removeFirst() {
        throw new UnsupportedOperationException();
    }

    public ChannelHandler removeLast() {
        throw new UnsupportedOperationException();
    }

    public void replace(ChannelHandler channelHandler, String str, ChannelHandler channelHandler2) {
        throw new UnsupportedOperationException();
    }

    public ChannelHandler replace(String str, String str2, ChannelHandler channelHandler) {
        throw new UnsupportedOperationException();
    }

    public <T extends ChannelHandler> T replace(Class<T> cls, String str, ChannelHandler channelHandler) {
        throw new UnsupportedOperationException();
    }

    private static void callBeforeAdd(ChannelHandlerContext channelHandlerContext) {
        if (channelHandlerContext.getHandler() instanceof LifeCycleAwareChannelHandler) {
            LifeCycleAwareChannelHandler lifeCycleAwareChannelHandler = (LifeCycleAwareChannelHandler) channelHandlerContext.getHandler();
            try {
                lifeCycleAwareChannelHandler.beforeAdd(channelHandlerContext);
            } catch (Throwable th) {
                throw new ChannelHandlerLifeCycleException(lifeCycleAwareChannelHandler.getClass().getName() + ".beforeAdd() has thrown an exception; not adding.", th);
            }
        }
    }

    private static void callAfterAdd(ChannelHandlerContext channelHandlerContext) {
        LifeCycleAwareChannelHandler lifeCycleAwareChannelHandler;
        boolean z;
        if (channelHandlerContext.getHandler() instanceof LifeCycleAwareChannelHandler) {
            lifeCycleAwareChannelHandler = (LifeCycleAwareChannelHandler) channelHandlerContext.getHandler();
            try {
                lifeCycleAwareChannelHandler.afterAdd(channelHandlerContext);
                return;
            } catch (Throwable th) {
                logger.warn("Failed to remove a handler: " + channelHandlerContext.getName(), th);
                z = false;
            }
        } else {
            return;
        }
        if (z) {
            throw new ChannelHandlerLifeCycleException(lifeCycleAwareChannelHandler.getClass().getName() + ".afterAdd() has thrown an exception; removed.", th);
        }
        throw new ChannelHandlerLifeCycleException(lifeCycleAwareChannelHandler.getClass().getName() + ".afterAdd() has thrown an exception; also failed to remove.", th);
    }

    private static void callBeforeRemove(ChannelHandlerContext channelHandlerContext) {
        if (channelHandlerContext.getHandler() instanceof LifeCycleAwareChannelHandler) {
            LifeCycleAwareChannelHandler lifeCycleAwareChannelHandler = (LifeCycleAwareChannelHandler) channelHandlerContext.getHandler();
            try {
                lifeCycleAwareChannelHandler.beforeRemove(channelHandlerContext);
            } catch (Throwable th) {
                throw new ChannelHandlerLifeCycleException(lifeCycleAwareChannelHandler.getClass().getName() + ".beforeRemove() has thrown an exception; not removing.", th);
            }
        }
    }

    private static void callAfterRemove(ChannelHandlerContext channelHandlerContext) {
        if (channelHandlerContext.getHandler() instanceof LifeCycleAwareChannelHandler) {
            LifeCycleAwareChannelHandler lifeCycleAwareChannelHandler = (LifeCycleAwareChannelHandler) channelHandlerContext.getHandler();
            try {
                lifeCycleAwareChannelHandler.afterRemove(channelHandlerContext);
            } catch (Throwable th) {
                throw new ChannelHandlerLifeCycleException(lifeCycleAwareChannelHandler.getClass().getName() + ".afterRemove() has thrown an exception.", th);
            }
        }
    }

    public ChannelHandler getFirst() {
        return this.contexts[0].getHandler();
    }

    public ChannelHandler getLast() {
        return this.contexts[this.contexts.length - 1].getHandler();
    }

    public ChannelHandler get(String str) {
        StaticChannelHandlerContext staticChannelHandlerContext = (StaticChannelHandlerContext) this.name2ctx.get(str);
        if (staticChannelHandlerContext == null) {
            return null;
        }
        return staticChannelHandlerContext.getHandler();
    }

    public <T extends ChannelHandler> T get(Class<T> cls) {
        ChannelHandlerContext context = getContext(cls);
        if (context == null) {
            return null;
        }
        return context.getHandler();
    }

    public ChannelHandlerContext getContext(String str) {
        if (str != null) {
            return (ChannelHandlerContext) this.name2ctx.get(str);
        }
        throw new NullPointerException(HttpPostBodyUtil.NAME);
    }

    public ChannelHandlerContext getContext(ChannelHandler channelHandler) {
        StaticChannelHandlerContext[] staticChannelHandlerContextArr;
        if (channelHandler == null) {
            throw new NullPointerException("handler");
        }
        for (StaticChannelHandlerContext staticChannelHandlerContext : this.contexts) {
            if (staticChannelHandlerContext.getHandler() == channelHandler) {
                return staticChannelHandlerContext;
            }
        }
        return null;
    }

    public ChannelHandlerContext getContext(Class<? extends ChannelHandler> cls) {
        StaticChannelHandlerContext[] staticChannelHandlerContextArr;
        if (cls == null) {
            throw new NullPointerException("handlerType");
        }
        for (StaticChannelHandlerContext staticChannelHandlerContext : this.contexts) {
            if (cls.isAssignableFrom(staticChannelHandlerContext.getHandler().getClass())) {
                return staticChannelHandlerContext;
            }
        }
        return null;
    }

    public List<String> getNames() {
        ArrayList arrayList = new ArrayList();
        for (StaticChannelHandlerContext name : this.contexts) {
            arrayList.add(name.getName());
        }
        return arrayList;
    }

    public Map<String, ChannelHandler> toMap() {
        StaticChannelHandlerContext[] staticChannelHandlerContextArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (StaticChannelHandlerContext staticChannelHandlerContext : this.contexts) {
            linkedHashMap.put(staticChannelHandlerContext.getName(), staticChannelHandlerContext.getHandler());
        }
        return linkedHashMap;
    }

    public String toString() {
        StaticChannelHandlerContext[] staticChannelHandlerContextArr;
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('{');
        for (StaticChannelHandlerContext staticChannelHandlerContext : this.contexts) {
            sb.append('(');
            sb.append(staticChannelHandlerContext.getName());
            sb.append(" = ");
            sb.append(staticChannelHandlerContext.getHandler().getClass().getName());
            sb.append(')');
            sb.append(", ");
        }
        sb.replace(sb.length() - 2, sb.length(), "}");
        return sb.toString();
    }

    public void sendUpstream(ChannelEvent channelEvent) {
        StaticChannelHandlerContext actualUpstreamContext = getActualUpstreamContext(0);
        if (actualUpstreamContext == null) {
            logger.warn("The pipeline contains no upstream handlers; discarding: " + channelEvent);
        } else {
            sendUpstream(actualUpstreamContext, channelEvent);
        }
    }

    /* access modifiers changed from: 0000 */
    public void sendUpstream(StaticChannelHandlerContext staticChannelHandlerContext, ChannelEvent channelEvent) {
        try {
            ((ChannelUpstreamHandler) staticChannelHandlerContext.getHandler()).handleUpstream(staticChannelHandlerContext, channelEvent);
        } catch (Throwable th) {
            notifyHandlerException(channelEvent, th);
        }
    }

    public void sendDownstream(ChannelEvent channelEvent) {
        StaticChannelHandlerContext actualDownstreamContext = getActualDownstreamContext(this.lastIndex);
        if (actualDownstreamContext == null) {
            try {
                getSink().eventSunk(this, channelEvent);
            } catch (Throwable th) {
                notifyHandlerException(channelEvent, th);
            }
        } else {
            sendDownstream(actualDownstreamContext, channelEvent);
        }
    }

    /* access modifiers changed from: 0000 */
    public void sendDownstream(StaticChannelHandlerContext staticChannelHandlerContext, ChannelEvent channelEvent) {
        if (channelEvent instanceof UpstreamMessageEvent) {
            throw new IllegalArgumentException("cannot send an upstream event to downstream");
        }
        try {
            ((ChannelDownstreamHandler) staticChannelHandlerContext.getHandler()).handleDownstream(staticChannelHandlerContext, channelEvent);
        } catch (Throwable th) {
            channelEvent.getFuture().setFailure(th);
            notifyHandlerException(channelEvent, th);
        }
    }

    /* access modifiers changed from: private */
    public StaticChannelHandlerContext getActualUpstreamContext(int i) {
        while (i < this.contexts.length) {
            StaticChannelHandlerContext staticChannelHandlerContext = this.contexts[i];
            if (staticChannelHandlerContext.canHandleUpstream()) {
                return staticChannelHandlerContext;
            }
            i++;
        }
        return null;
    }

    /* access modifiers changed from: private */
    public StaticChannelHandlerContext getActualDownstreamContext(int i) {
        while (i >= 0) {
            StaticChannelHandlerContext staticChannelHandlerContext = this.contexts[i];
            if (staticChannelHandlerContext.canHandleDownstream()) {
                return staticChannelHandlerContext;
            }
            i--;
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void notifyHandlerException(ChannelEvent channelEvent, Throwable th) {
        ChannelPipelineException channelPipelineException;
        if (channelEvent instanceof ExceptionEvent) {
            logger.warn("An exception was thrown by a user handler while handling an exception event (" + channelEvent + ')', th);
            return;
        }
        if (th instanceof ChannelPipelineException) {
            channelPipelineException = (ChannelPipelineException) th;
        } else {
            channelPipelineException = new ChannelPipelineException(th);
        }
        try {
            this.sink.exceptionCaught(this, channelEvent, channelPipelineException);
        } catch (Exception e) {
            logger.warn("An exception was thrown by an exception handler.", e);
        }
    }
}
