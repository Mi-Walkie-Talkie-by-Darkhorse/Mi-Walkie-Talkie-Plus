.class public Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;
.super Ljava/io/IOException;
.source "FileBusyAfterRunException.java"


# static fields
.field public static final SIGNAL:Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException$1;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException$1;-><init>()V

    sput-object v0, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "File busy after run"

    .line 2
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;-><init>()V

    return-void
.end method
