package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import com.liulishuo.filedownloader.message.MessageSnapshot.a;

public abstract class LargeMessageSnapshot extends MessageSnapshot {

    public static class CompletedFlowDirectlySnapshot extends CompletedSnapshot implements a {
        CompletedFlowDirectlySnapshot(int i, boolean z, long j) {
            super(i, z, j);
        }
    }

    public static class CompletedSnapshot extends LargeMessageSnapshot {
        private final boolean b;
        private final long c;

        CompletedSnapshot(int i, boolean z, long j) {
            super(i);
            this.b = z;
            this.c = j;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            LargeMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeByte(this.b ? (byte) 1 : 0);
            parcel.writeLong(this.c);
        }

        CompletedSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readByte() != 0;
            this.c = parcel.readLong();
        }

        public byte b() {
            return -3;
        }

        public long d() {
            return this.c;
        }

        public boolean e() {
            return this.b;
        }
    }

    public static class ConnectedMessageSnapshot extends LargeMessageSnapshot {
        private final boolean b;
        private final long c;
        private final String d;
        private final String e;

        ConnectedMessageSnapshot(int i, boolean z, long j, String str, String str2) {
            super(i);
            this.b = z;
            this.c = j;
            this.d = str;
            this.e = str2;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            LargeMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeByte(this.b ? (byte) 1 : 0);
            parcel.writeLong(this.c);
            parcel.writeString(this.d);
            parcel.writeString(this.e);
        }

        ConnectedMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readByte() != 0;
            this.c = parcel.readLong();
            this.d = parcel.readString();
            this.e = parcel.readString();
        }

        public String f() {
            return this.e;
        }

        public byte b() {
            return 2;
        }

        public boolean g() {
            return this.b;
        }

        public long d() {
            return this.c;
        }

        public String h() {
            return this.d;
        }
    }

    public static class ErrorMessageSnapshot extends LargeMessageSnapshot {
        private final long b;
        private final Throwable c;

        ErrorMessageSnapshot(int i, long j, Throwable th) {
            super(i);
            this.b = j;
            this.c = th;
        }

        public long i() {
            return this.b;
        }

        public byte b() {
            return -1;
        }

        public Throwable j() {
            return this.c;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            LargeMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeLong(this.b);
            parcel.writeSerializable(this.c);
        }

        ErrorMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readLong();
            this.c = (Throwable) parcel.readSerializable();
        }
    }

    public static class PausedSnapshot extends PendingMessageSnapshot {
        public byte b() {
            return -2;
        }
    }

    public static class PendingMessageSnapshot extends LargeMessageSnapshot {
        private final long b;
        private final long c;

        PendingMessageSnapshot(PendingMessageSnapshot pendingMessageSnapshot) {
            this(pendingMessageSnapshot.m(), pendingMessageSnapshot.i(), pendingMessageSnapshot.d());
        }

        PendingMessageSnapshot(int i, long j, long j2) {
            super(i);
            this.b = j;
            this.c = j2;
        }

        public byte b() {
            return 1;
        }

        public long i() {
            return this.b;
        }

        public long d() {
            return this.c;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            LargeMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeLong(this.b);
            parcel.writeLong(this.c);
        }

        PendingMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readLong();
            this.c = parcel.readLong();
        }
    }

    public static class ProgressMessageSnapshot extends LargeMessageSnapshot {
        private final long b;

        ProgressMessageSnapshot(int i, long j) {
            super(i);
            this.b = j;
        }

        public byte b() {
            return 3;
        }

        public long i() {
            return this.b;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            LargeMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeLong(this.b);
        }

        ProgressMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readLong();
        }
    }

    public static class RetryMessageSnapshot extends ErrorMessageSnapshot {
        private final int b;

        RetryMessageSnapshot(int i, long j, Throwable th, int i2) {
            super(i, j, th);
            this.b = i2;
        }

        public int k() {
            return this.b;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.b);
        }

        RetryMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readInt();
        }

        public byte b() {
            return 5;
        }
    }

    public static class WarnFlowDirectlySnapshot extends WarnMessageSnapshot implements a {
        WarnFlowDirectlySnapshot(int i, long j, long j2) {
            super(i, j, j2);
        }
    }

    public static class WarnMessageSnapshot extends PendingMessageSnapshot implements a {
        WarnMessageSnapshot(int i, long j, long j2) {
            super(i, j, j2);
        }

        WarnMessageSnapshot(Parcel parcel) {
            super(parcel);
        }

        public MessageSnapshot l() {
            return new PendingMessageSnapshot((PendingMessageSnapshot) this);
        }

        public byte b() {
            return -4;
        }
    }

    LargeMessageSnapshot(int i) {
        super(i);
        this.a = true;
    }

    LargeMessageSnapshot(Parcel parcel) {
        super(parcel);
    }

    public int a() {
        if (i() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) i();
    }

    public int c() {
        if (d() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) d();
    }
}
