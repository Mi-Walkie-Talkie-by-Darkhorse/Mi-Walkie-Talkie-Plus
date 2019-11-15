package com.liulishuo.filedownloader.message;

import com.liulishuo.filedownloader.download.e.a;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.message.BlockCompleteMessage.BlockCompleteMessageImpl;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot.CompletedFlowDirectlySnapshot;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot.CompletedSnapshot;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot.ConnectedMessageSnapshot;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot.PendingMessageSnapshot;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot.ProgressMessageSnapshot;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot.RetryMessageSnapshot;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot.WarnFlowDirectlySnapshot;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot.WarnMessageSnapshot;
import com.liulishuo.filedownloader.message.MessageSnapshot.StartedMessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;

/* compiled from: MessageSnapshotTaker */
public class d {
    public static MessageSnapshot a(int i, File file, boolean z) {
        long length = file.length();
        if (length > 2147483647L) {
            if (z) {
                return new CompletedFlowDirectlySnapshot(i, true, length);
            }
            return new CompletedSnapshot(i, true, length);
        } else if (z) {
            return new SmallMessageSnapshot.CompletedFlowDirectlySnapshot(i, true, (int) length);
        } else {
            return new SmallMessageSnapshot.CompletedSnapshot(i, true, (int) length);
        }
    }

    public static MessageSnapshot a(int i, long j, long j2, boolean z) {
        if (j2 > 2147483647L) {
            if (z) {
                return new WarnFlowDirectlySnapshot(i, j, j2);
            }
            return new WarnMessageSnapshot(i, j, j2);
        } else if (z) {
            return new SmallMessageSnapshot.WarnFlowDirectlySnapshot(i, (int) j, (int) j2);
        } else {
            return new SmallMessageSnapshot.WarnMessageSnapshot(i, (int) j, (int) j2);
        }
    }

    public static MessageSnapshot a(int i, long j, Throwable th) {
        if (j > 2147483647L) {
            return new ErrorMessageSnapshot(i, j, th);
        }
        return new SmallMessageSnapshot.ErrorMessageSnapshot(i, (int) j, th);
    }

    public static MessageSnapshot a(MessageSnapshot messageSnapshot) {
        if (messageSnapshot.b() == -3) {
            return new BlockCompleteMessageImpl(messageSnapshot);
        }
        throw new IllegalStateException(g.a("take block completed snapshot, must has already be completed. %d %d", Integer.valueOf(messageSnapshot.m()), Byte.valueOf(messageSnapshot.b())));
    }

    public static MessageSnapshot a(byte b, FileDownloadModel fileDownloadModel, a aVar) {
        IllegalStateException illegalStateException;
        int a = fileDownloadModel.a();
        if (b == -4) {
            throw new IllegalStateException(g.a("please use #catchWarn instead %d", Integer.valueOf(a)));
        }
        switch (b) {
            case -3:
                if (fileDownloadModel.q()) {
                    return new CompletedSnapshot(a, false, fileDownloadModel.h());
                }
                return new SmallMessageSnapshot.CompletedSnapshot(a, false, (int) fileDownloadModel.h());
            case -1:
                if (fileDownloadModel.q()) {
                    return new ErrorMessageSnapshot(a, fileDownloadModel.g(), aVar.b());
                }
                return new SmallMessageSnapshot.ErrorMessageSnapshot(a, (int) fileDownloadModel.g(), aVar.b());
            case 1:
                if (fileDownloadModel.q()) {
                    return new PendingMessageSnapshot(a, fileDownloadModel.g(), fileDownloadModel.h());
                }
                return new SmallMessageSnapshot.PendingMessageSnapshot(a, (int) fileDownloadModel.g(), (int) fileDownloadModel.h());
            case 2:
                String str = fileDownloadModel.l() ? fileDownloadModel.m() : null;
                if (fileDownloadModel.q()) {
                    return new ConnectedMessageSnapshot(a, aVar.a(), fileDownloadModel.h(), fileDownloadModel.j(), str);
                }
                return new SmallMessageSnapshot.ConnectedMessageSnapshot(a, aVar.a(), (int) fileDownloadModel.h(), fileDownloadModel.j(), str);
            case 3:
                if (fileDownloadModel.q()) {
                    return new ProgressMessageSnapshot(a, fileDownloadModel.g());
                }
                return new SmallMessageSnapshot.ProgressMessageSnapshot(a, (int) fileDownloadModel.g());
            case 5:
                if (fileDownloadModel.q()) {
                    return new RetryMessageSnapshot(a, fileDownloadModel.g(), aVar.b(), aVar.c());
                }
                return new SmallMessageSnapshot.RetryMessageSnapshot(a, (int) fileDownloadModel.g(), aVar.b(), aVar.c());
            case 6:
                return new StartedMessageSnapshot(a);
            default:
                String a2 = g.a("it can't takes a snapshot for the task(%s) when its status is %d,", fileDownloadModel, Byte.valueOf(b));
                com.liulishuo.filedownloader.e.d.d(d.class, "it can't takes a snapshot for the task(%s) when its status is %d,", fileDownloadModel, Byte.valueOf(b));
                if (aVar.b() != null) {
                    illegalStateException = new IllegalStateException(a2, aVar.b());
                } else {
                    illegalStateException = new IllegalStateException(a2);
                }
                if (fileDownloadModel.q()) {
                    return new ErrorMessageSnapshot(a, fileDownloadModel.g(), illegalStateException);
                }
                return new SmallMessageSnapshot.ErrorMessageSnapshot(a, (int) fileDownloadModel.g(), illegalStateException);
        }
    }
}
