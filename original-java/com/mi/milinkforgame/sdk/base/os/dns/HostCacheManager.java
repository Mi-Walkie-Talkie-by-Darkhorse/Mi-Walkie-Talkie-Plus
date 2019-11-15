package com.mi.milinkforgame.sdk.base.os.dns;

import com.mi.milinkforgame.sdk.base.debug.CustomLogcat;
import com.mi.milinkforgame.sdk.base.os.Device.Network;
import com.mi.milinkforgame.sdk.base.os.Device.Network.Wifi;
import java.net.InetAddress;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class HostCacheManager {
    private static HostCacheManager manager = null;
    private final int MAX_CACHE_SIZE = 128;
    private Cache<String, HostEntity> data = new Cache<>(128);

    private class Cache<K, V> extends LinkedHashMap<K, V> {
        private static final float DEFAULT_LOAD_FACTOR = 0.75f;
        private static final long serialVersionUID = -6940751117906094384L;
        private int capacity = 5;
        private Object lock = new Object();

        public Cache(int i) {
            super(i, DEFAULT_LOAD_FACTOR, true);
            if (i > 0) {
                this.capacity = i;
            }
        }

        public V get(Object obj) {
            V v;
            synchronized (this.lock) {
                v = super.get(obj);
            }
            return v;
        }

        public V put(K k, V v) {
            V put;
            synchronized (this.lock) {
                put = super.put(k, v);
            }
            return put;
        }

        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.lock) {
                super.putAll(map);
            }
        }

        public V remove(Object obj) {
            V remove;
            synchronized (this.lock) {
                remove = super.remove(obj);
            }
            return remove;
        }

        public void clear() {
            synchronized (this.lock) {
                super.clear();
            }
        }

        public boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.lock) {
                containsKey = super.containsKey(obj);
            }
            return containsKey;
        }

        public int size() {
            int size;
            synchronized (this.lock) {
                size = super.size();
            }
            return size;
        }

        /* access modifiers changed from: protected */
        public boolean removeEldestEntry(Entry<K, V> entry) {
            return size() > this.capacity;
        }
    }

    private class HostEntity {
        public InetAddress[] address;
        public long expireTime;
        public String networkType;

        private HostEntity() {
            this.expireTime = 0;
            this.address = null;
            this.networkType = null;
        }

        public boolean isValid() {
            String bssid;
            boolean z = System.currentTimeMillis() < this.expireTime;
            if (!z) {
                return z;
            }
            if (Network.isMobile()) {
                bssid = Network.getApnName();
            } else {
                bssid = Wifi.getBSSID();
            }
            if (bssid == null) {
                return false;
            }
            return bssid.equalsIgnoreCase(this.networkType);
        }
    }

    public static synchronized HostCacheManager getInstance() {
        HostCacheManager hostCacheManager;
        synchronized (HostCacheManager.class) {
            if (manager == null) {
                manager = new HostCacheManager();
            }
            hostCacheManager = manager;
        }
        return hostCacheManager;
    }

    public InetAddress[] getCacheItemByHost(String str) {
        HostEntity hostEntity = (HostEntity) this.data.get(str);
        if (hostEntity != null) {
            if (hostEntity.isValid()) {
                return hostEntity.address;
            }
            this.data.remove(str);
        }
        return null;
    }

    public void addCache(String str, InetAddress[] inetAddressArr, long j) {
        String bssid;
        CustomLogcat.i("dnstest", "$$$addCache[" + str + "]");
        HostEntity hostEntity = new HostEntity();
        hostEntity.expireTime = j;
        hostEntity.address = inetAddressArr;
        if (Network.isMobile()) {
            bssid = Network.getApnName();
        } else {
            bssid = Wifi.getBSSID();
        }
        hostEntity.networkType = bssid;
        if (this.data.containsKey(str)) {
            this.data.remove(str);
        }
        this.data.put(str, hostEntity);
    }
}
