package okhttp3.internal.connection;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal.Util;

public final class RouteSelector {
    private final Address address;
    private List<InetSocketAddress> inetSocketAddresses = Collections.emptyList();
    private InetSocketAddress lastInetSocketAddress;
    private Proxy lastProxy;
    private int nextInetSocketAddressIndex;
    private int nextProxyIndex;
    private final List<Route> postponedRoutes = new ArrayList();
    private List<Proxy> proxies = Collections.emptyList();
    private final RouteDatabase routeDatabase;

    public RouteSelector(Address address2, RouteDatabase routeDatabase2) {
        this.address = address2;
        this.routeDatabase = routeDatabase2;
        resetNextProxy(address2.url(), address2.proxy());
    }

    public boolean hasNext() {
        return hasNextInetSocketAddress() || hasNextProxy() || hasNextPostponed();
    }

    public Route next() throws IOException {
        if (!hasNextInetSocketAddress()) {
            if (hasNextProxy()) {
                this.lastProxy = nextProxy();
            } else if (hasNextPostponed()) {
                return nextPostponed();
            } else {
                throw new NoSuchElementException();
            }
        }
        this.lastInetSocketAddress = nextInetSocketAddress();
        Route route = new Route(this.address, this.lastProxy, this.lastInetSocketAddress);
        if (!this.routeDatabase.shouldPostpone(route)) {
            return route;
        }
        this.postponedRoutes.add(route);
        return next();
    }

    public void connectFailed(Route route, IOException iOException) {
        if (!(route.proxy().type() == Type.DIRECT || this.address.proxySelector() == null)) {
            this.address.proxySelector().connectFailed(this.address.url().uri(), route.proxy().address(), iOException);
        }
        this.routeDatabase.failed(route);
    }

    private void resetNextProxy(HttpUrl httpUrl, Proxy proxy) {
        List<Proxy> immutableList;
        if (proxy != null) {
            this.proxies = Collections.singletonList(proxy);
        } else {
            List select = this.address.proxySelector().select(httpUrl.uri());
            if (select == null || select.isEmpty()) {
                immutableList = Util.immutableList((T[]) new Proxy[]{Proxy.NO_PROXY});
            } else {
                immutableList = Util.immutableList(select);
            }
            this.proxies = immutableList;
        }
        this.nextProxyIndex = 0;
    }

    private boolean hasNextProxy() {
        return this.nextProxyIndex < this.proxies.size();
    }

    private Proxy nextProxy() throws IOException {
        if (!hasNextProxy()) {
            throw new SocketException("No route to " + this.address.url().host() + "; exhausted proxy configurations: " + this.proxies);
        }
        List<Proxy> list = this.proxies;
        int i = this.nextProxyIndex;
        this.nextProxyIndex = i + 1;
        Proxy proxy = (Proxy) list.get(i);
        resetNextInetSocketAddress(proxy);
        return proxy;
    }

    private void resetNextInetSocketAddress(Proxy proxy) throws IOException {
        int i;
        String str;
        this.inetSocketAddresses = new ArrayList();
        if (proxy.type() == Type.DIRECT || proxy.type() == Type.SOCKS) {
            String host = this.address.url().host();
            i = this.address.url().port();
            str = host;
        } else {
            SocketAddress address2 = proxy.address();
            if (!(address2 instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address2.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address2;
            String hostString = getHostString(inetSocketAddress);
            i = inetSocketAddress.getPort();
            str = hostString;
        }
        if (i < 1 || i > 65535) {
            throw new SocketException("No route to " + str + ":" + i + "; port is out of range");
        }
        if (proxy.type() == Type.SOCKS) {
            this.inetSocketAddresses.add(InetSocketAddress.createUnresolved(str, i));
        } else {
            List lookup = this.address.dns().lookup(str);
            if (lookup.isEmpty()) {
                throw new UnknownHostException(this.address.dns() + " returned no addresses for " + str);
            }
            int size = lookup.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.inetSocketAddresses.add(new InetSocketAddress((InetAddress) lookup.get(i2), i));
            }
        }
        this.nextInetSocketAddressIndex = 0;
    }

    static String getHostString(InetSocketAddress inetSocketAddress) {
        InetAddress address2 = inetSocketAddress.getAddress();
        if (address2 == null) {
            return inetSocketAddress.getHostName();
        }
        return address2.getHostAddress();
    }

    private boolean hasNextInetSocketAddress() {
        return this.nextInetSocketAddressIndex < this.inetSocketAddresses.size();
    }

    private InetSocketAddress nextInetSocketAddress() throws IOException {
        if (!hasNextInetSocketAddress()) {
            throw new SocketException("No route to " + this.address.url().host() + "; exhausted inet socket addresses: " + this.inetSocketAddresses);
        }
        List<InetSocketAddress> list = this.inetSocketAddresses;
        int i = this.nextInetSocketAddressIndex;
        this.nextInetSocketAddressIndex = i + 1;
        return (InetSocketAddress) list.get(i);
    }

    private boolean hasNextPostponed() {
        return !this.postponedRoutes.isEmpty();
    }

    private Route nextPostponed() {
        return (Route) this.postponedRoutes.remove(0);
    }
}
