package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import com.liulishuo.filedownloader.message.MessageSnapshot.a;

public abstract class SmallMessageSnapshot extends MessageSnapshot {

    public static class CompletedFlowDirectlySnapshot extends CompletedSnapshot implements a {
        CompletedFlowDirectlySnapshot(int i, boolean z, int i2) {
            super(i, z, i2);
        }
    }

    public static class CompletedSnapshot extends SmallMessageSnapshot {
        private final boolean b;
        private final int c;

        CompletedSnapshot(int i, boolean z, int i2) {
            super(i);
            this.b = z;
            this.c = i2;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            SmallMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeByte(this.b ? (byte) 1 : 0);
            parcel.writeInt(this.c);
        }

        CompletedSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readByte() != 0;
            this.c = parcel.readInt();
        }

        public byte b() {
            return -3;
        }

        public int c() {
            return this.c;
        }

        public boolean e() {
            return this.b;
        }
    }

    public static class ConnectedMessageSnapshot extends SmallMessageSnapshot {
        private final boolean b;
        private final int c;
        private final String d;
        private final String e;

        ConnectedMessageSnapshot(int i, boolean z, int i2, String str, String str2) {
            super(i);
            this.b = z;
            this.c = i2;
            this.d = str;
            this.e = str2;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            SmallMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeByte(this.b ? (byte) 1 : 0);
            parcel.writeInt(this.c);
            parcel.writeString(this.d);
            parcel.writeString(this.e);
        }

        ConnectedMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readByte() != 0;
            this.c = parcel.readInt();
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

        public int c() {
            return this.c;
        }

        public String h() {
            return this.d;
        }
    }

    public static class ErrorMessageSnapshot extends SmallMessageSnapshot {
        private final int b;
        private final Throwable c;

        ErrorMessageSnapshot(int i, int i2, Throwable th) {
            super(i);
            this.b = i2;
            this.c = th;
        }

        public int a() {
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
            SmallMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeInt(this.b);
            parcel.writeSerializable(this.c);
        }

        ErrorMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readInt();
            this.c = (Throwable) parcel.readSerializable();
        }
    }

    public static class PausedSnapshot extends PendingMessageSnapshot {
        public byte b() {
            return -2;
        }
    }

    public static class PendingMessageSnapshot extends SmallMessageSnapshot {
        private final int b;
        private final int c;

        PendingMessageSnapshot(PendingMessageSnapshot pendingMessageSnapshot) {
            this(pendingMessageSnapshot.m(), pendingMessageSnapshot.a(), pendingMessageSnapshot.c());
        }

        PendingMessageSnapshot(int i, int i2, int i3) {
            super(i);
            this.b = i2;
            this.c = i3;
        }

        PendingMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readInt();
            this.c = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            SmallMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
        }

        public byte b() {
            return 1;
        }

        public int a() {
            return this.b;
        }

        public int c() {
            return this.c;
        }
    }

    public static class ProgressMessageSnapshot extends SmallMessageSnapshot {
        private final int b;

        ProgressMessageSnapshot(int i, int i2) {
            super(i);
            this.b = i2;
        }

        public byte b() {
            return 3;
        }

        public int a() {
            return this.b;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            SmallMessageSnapshot.super.writeToParcel(parcel, i);
            parcel.writeInt(this.b);
        }

        ProgressMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.b = parcel.readInt();
        }
    }

    public static class RetryMessageSnapshot extends ErrorMessageSnapshot {
        private final int b;

        RetryMessageSnapshot(int i, int i2, Throwable th, int i3) {
            super(i, i2, th);
            this.b = i3;
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
        WarnFlowDirectlySnapshot(int i, int i2, int i3) {
            super(i, i2, i3);
        }
    }

    public static class WarnMessageSnapshot extends PendingMessageSnapshot implements a {
        WarnMessageSnapshot(int i, int i2, int i3) {
            super(i, i2, i3);
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

    SmallMessageSnapshot(int i) {
        super(i);
        this.a = false;
    }

    SmallMessageSnapshot(Parcel parcel) {
        super(parcel);
    }

    public long d() {
        return (long) c();
    }

    public long i() {
        return (long) a();
    }
}
