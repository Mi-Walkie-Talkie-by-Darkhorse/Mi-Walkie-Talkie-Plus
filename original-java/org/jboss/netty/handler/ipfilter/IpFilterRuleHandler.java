package org.jboss.netty.handler.ipfilter;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.jboss.netty.channel.ChannelEvent;
import org.jboss.netty.channel.ChannelHandler.Sharable;
import org.jboss.netty.channel.ChannelHandlerContext;

@Sharable
public class IpFilterRuleHandler extends IpFilteringHandlerImpl {
    private final CopyOnWriteArrayList<IpFilterRule> ipFilterRuleList = new CopyOnWriteArrayList<>();

    public IpFilterRuleHandler(List<IpFilterRule> list) {
        if (list != null) {
            this.ipFilterRuleList.addAll(list);
        }
    }

    public IpFilterRuleHandler() {
    }

    public void add(IpFilterRule ipFilterRule) {
        if (ipFilterRule == null) {
            throw new NullPointerException("IpFilterRule can not be null");
        }
        this.ipFilterRuleList.add(ipFilterRule);
    }

    public void add(int i, IpFilterRule ipFilterRule) {
        if (ipFilterRule == null) {
            throw new NullPointerException("IpFilterRule can not be null");
        }
        this.ipFilterRuleList.add(i, ipFilterRule);
    }

    public void addAll(Collection<IpFilterRule> collection) {
        if (collection == null) {
            throw new NullPointerException("Collection can not be null");
        }
        this.ipFilterRuleList.addAll(collection);
    }

    public void addAll(int i, Collection<IpFilterRule> collection) {
        if (collection == null) {
            throw new NullPointerException("Collection can not be null");
        }
        this.ipFilterRuleList.addAll(i, collection);
    }

    public int addAllAbsent(Collection<IpFilterRule> collection) {
        if (collection != null) {
            return this.ipFilterRuleList.addAllAbsent(collection);
        }
        throw new NullPointerException("Collection can not be null");
    }

    public boolean addIfAbsent(IpFilterRule ipFilterRule) {
        if (ipFilterRule != null) {
            return this.ipFilterRuleList.addIfAbsent(ipFilterRule);
        }
        throw new NullPointerException("IpFilterRule can not be null");
    }

    public void clear() {
        this.ipFilterRuleList.clear();
    }

    public boolean contains(IpFilterRule ipFilterRule) {
        if (ipFilterRule != null) {
            return this.ipFilterRuleList.contains(ipFilterRule);
        }
        throw new NullPointerException("IpFilterRule can not be null");
    }

    public boolean containsAll(Collection<IpFilterRule> collection) {
        if (collection != null) {
            return this.ipFilterRuleList.containsAll(collection);
        }
        throw new NullPointerException("Collection can not be null");
    }

    public IpFilterRule get(int i) {
        return (IpFilterRule) this.ipFilterRuleList.get(i);
    }

    public boolean isEmpty() {
        return this.ipFilterRuleList.isEmpty();
    }

    public void remove(IpFilterRule ipFilterRule) {
        if (ipFilterRule == null) {
            throw new NullPointerException("IpFilterRule can not be null");
        }
        this.ipFilterRuleList.remove(ipFilterRule);
    }

    public IpFilterRule remove(int i) {
        return (IpFilterRule) this.ipFilterRuleList.remove(i);
    }

    public void removeAll(Collection<IpFilterRule> collection) {
        if (collection == null) {
            throw new NullPointerException("Collection can not be null");
        }
        this.ipFilterRuleList.removeAll(collection);
    }

    public void retainAll(Collection<IpFilterRule> collection) {
        if (collection == null) {
            throw new NullPointerException("Collection can not be null");
        }
        this.ipFilterRuleList.retainAll(collection);
    }

    public IpFilterRule set(int i, IpFilterRule ipFilterRule) {
        if (ipFilterRule != null) {
            return (IpFilterRule) this.ipFilterRuleList.set(i, ipFilterRule);
        }
        throw new NullPointerException("IpFilterRule can not be null");
    }

    public int size() {
        return this.ipFilterRuleList.size();
    }

    /* access modifiers changed from: protected */
    public boolean accept(ChannelHandlerContext channelHandlerContext, ChannelEvent channelEvent, InetSocketAddress inetSocketAddress) throws Exception {
        if (this.ipFilterRuleList.isEmpty()) {
            return true;
        }
        InetAddress address = inetSocketAddress.getAddress();
        Iterator it = this.ipFilterRuleList.iterator();
        while (it.hasNext()) {
            IpFilterRule ipFilterRule = (IpFilterRule) it.next();
            if (ipFilterRule.contains(address)) {
                return ipFilterRule.isAllowRule();
            }
        }
        return true;
    }
}
