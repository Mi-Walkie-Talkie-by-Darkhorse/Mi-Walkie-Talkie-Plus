package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* compiled from: DiskCacheStrategy */
public abstract class g {
    public static final g a = new g() {
        public boolean a(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        public boolean a(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }

        public boolean a() {
            return true;
        }

        public boolean b() {
            return true;
        }
    };
    public static final g b = new g() {
        public boolean a(DataSource dataSource) {
            return false;
        }

        public boolean a(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }

        public boolean a() {
            return false;
        }

        public boolean b() {
            return false;
        }
    };
    public static final g c = new g() {
        public boolean a(DataSource dataSource) {
            return (dataSource == DataSource.DATA_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }

        public boolean a(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }

        public boolean a() {
            return false;
        }

        public boolean b() {
            return true;
        }
    };
    public static final g d = new g() {
        public boolean a(DataSource dataSource) {
            return false;
        }

        public boolean a(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }

        public boolean a() {
            return true;
        }

        public boolean b() {
            return false;
        }
    };
    public static final g e = new g() {
        public boolean a(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        public boolean a(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return ((z && dataSource == DataSource.DATA_DISK_CACHE) || dataSource == DataSource.LOCAL) && encodeStrategy == EncodeStrategy.TRANSFORMED;
        }

        public boolean a() {
            return true;
        }

        public boolean b() {
            return true;
        }
    };

    public abstract boolean a();

    public abstract boolean a(DataSource dataSource);

    public abstract boolean a(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy);

    public abstract boolean b();
}
