package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot.CompletedSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot.ConnectedMessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot.PendingMessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot.ProgressMessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot.RetryMessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot.WarnMessageSnapshot;

public abstract class MessageSnapshot implements Parcelable, b {
    public static final Creator<MessageSnapshot> CREATOR = new Creator<MessageSnapshot>() {
        /* renamed from: a */
        public MessageSnapshot createFromParcel(Parcel parcel) {
            MessageSnapshot warnMessageSnapshot;
            boolean z = true;
            if (parcel.readByte() != 1) {
                z = false;
            }
            byte readByte = parcel.readByte();
            switch (readByte) {
                case -4:
                    if (!z) {
                        warnMessageSnapshot = new WarnMessageSnapshot(parcel);
                        break;
                    } else {
                        warnMessageSnapshot = new LargeMessageSnapshot.WarnMessageSnapshot(parcel);
                        break;
                    }
                case -3:
                    if (!z) {
                        warnMessageSnapshot = new CompletedSnapshot(parcel);
                        break;
                    } else {
                        warnMessageSnapshot = new LargeMessageSnapshot.CompletedSnapshot(parcel);
                        break;
                    }
                case -1:
                    if (!z) {
                        warnMessageSnapshot = new ErrorMessageSnapshot(parcel);
                        break;
                    } else {
                        warnMessageSnapshot = new LargeMessageSnapshot.ErrorMessageSnapshot(parcel);
                        break;
                    }
                case 1:
                    if (!z) {
                        warnMessageSnapshot = new PendingMessageSnapshot(parcel);
                        break;
                    } else {
                        warnMessageSnapshot = new LargeMessageSnapshot.PendingMessageSnapshot(parcel);
                        break;
                    }
                case 2:
                    if (!z) {
                        warnMessageSnapshot = new ConnectedMessageSnapshot(parcel);
                        break;
                    } else {
                        warnMessageSnapshot = new LargeMessageSnapshot.ConnectedMessageSnapshot(parcel);
                        break;
                    }
                case 3:
                    if (!z) {
                        warnMessageSnapshot = new ProgressMessageSnapshot(parcel);
                        break;
                    } else {
                        warnMessageSnapshot = new LargeMessageSnapshot.ProgressMessageSnapshot(parcel);
                        break;
                    }
                case 5:
                    if (!z) {
                        warnMessageSnapshot = new RetryMessageSnapshot(parcel);
                        break;
                    } else {
                        warnMessageSnapshot = new LargeMessageSnapshot.RetryMessageSnapshot(parcel);
                        break;
                    }
                case 6:
                    warnMessageSnapshot = new StartedMessageSnapshot(parcel);
                    break;
                default:
                    warnMessageSnapshot = null;
                    break;
            }
            if (warnMessageSnapshot != null) {
                warnMessageSnapshot.a = z;
                return warnMessageSnapshot;
            }
            throw new IllegalStateException("Can't restore the snapshot because unknown status: " + readByte);
        }

        /* renamed from: a */
        public MessageSnapshot[] newArray(int i) {
            return new MessageSnapshot[i];
        }
    };
    protected boolean a;
    private final int b;

    public static class NoFieldException extends IllegalStateException {
        NoFieldException(String str, MessageSnapshot messageSnapshot) {
            super(g.a("There isn't a field for '%s' in this message %d %d %s", str, Integer.valueOf(messageSnapshot.m()), Byte.valueOf(messageSnapshot.b()), messageSnapshot.getClass().getName()));
        }
    }

    public static class StartedMessageSnapshot extends MessageSnapshot {
        StartedMessageSnapshot(int i) {
            super(i);
        }

        StartedMessageSnapshot(Parcel parcel) {
            super(parcel);
        }

        public byte b() {
            return 6;
        }
    }

    public interface a {
        MessageSnapshot l();
    }

    MessageSnapshot(int i) {
        this.b = i;
    }

    public int m() {
        return this.b;
    }

    public Throwable j() {
        throw new NoFieldException("getThrowable", this);
    }

    public int k() {
        throw new NoFieldException("getRetryingTimes", this);
    }

    public boolean g() {
        throw new NoFieldException("isResuming", this);
    }

    public String h() {
        throw new NoFieldException("getEtag", this);
    }

    public long i() {
        throw new NoFieldException("getLargeSofarBytes", this);
    }

    public long d() {
        throw new NoFieldException("getLargeTotalBytes", this);
    }

    public int a() {
        throw new NoFieldException("getSmallSofarBytes", this);
    }

    public int c() {
        throw new NoFieldException("getSmallTotalBytes", this);
    }

    public boolean e() {
        throw new NoFieldException("isReusedDownloadedFile", this);
    }

    public String f() {
        throw new NoFieldException("getFileName", this);
    }

    public boolean n() {
        return this.a;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte((byte) (this.a ? 1 : 0));
        parcel.writeByte(b());
        parcel.writeInt(this.b);
    }

    MessageSnapshot(Parcel parcel) {
        this.b = parcel.readInt();
    }
}
