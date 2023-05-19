.class public Lcom/huawei/hms/framework/common/ExceptionCode;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CANCEL:I = 0x450

.field private static final CONNECT:Ljava/lang/String; = "connect"

.field public static final CONNECTION_ABORT:I = 0x1ae7d

.field public static final CONNECTION_REFUSED:I = 0x1ae81

.field public static final CONNECTION_RESET:I = 0x1ae7c

.field public static final CONNECT_FAILED:I = 0x1ae7e

.field public static final CRASH_EXCEPTION:I = 0x44f

.field public static final INTERRUPT_CONNECT_CLOSE:I = 0x1ae86

.field public static final INTERRUPT_EXCEPTION:I = 0x1ae85

.field public static final NETWORK_CHANGED:I = 0x1ae88

.field public static final NETWORK_IO_EXCEPTION:I = 0x44e

.field public static final NETWORK_UNREACHABLE:I = 0x1ae80

.field public static final PROTOCOL_ERROR:I = 0x1ae89

.field private static final READ:Ljava/lang/String; = "read"

.field public static final READ_ERROR:I = 0x1ae7b

.field public static final ROUTE_FAILED:I = 0x1ae7f

.field public static final SHUTDOWN_EXCEPTION:I = 0x1ae8a

.field public static final SOCKET_CLOSE:I = 0x1ae87

.field public static final SOCKET_CONNECT_TIMEOUT:I = 0x1ae8d

.field public static final SOCKET_READ_TIMEOUT:I = 0x1ae8f

.field public static final SOCKET_TIMEOUT:I = 0x1ae78

.field public static final SOCKET_WRITE_TIMEOUT:I = 0x1ae91

.field public static final SSL_HANDSHAKE_EXCEPTION:I = 0x1ae83

.field public static final SSL_PEERUNVERIFIED_EXCEPTION:I = 0x1ae84

.field public static final SSL_PROTOCOL_EXCEPTION:I = 0x1ae82

.field public static final UNABLE_TO_RESOLVE_HOST:I = 0x1ae7a

.field public static final UNEXPECTED_EOF:I = 0x1ae79

.field private static final WRITE:Ljava/lang/String; = "write"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs checkExceptionContainsKey(Ljava/lang/Exception;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/framework/common/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/ExceptionCode;->checkStrContainsKey(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/framework/common/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/ExceptionCode;->checkStrContainsKey(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static varargs checkStrContainsKey(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getErrorCodeFromException(Ljava/lang/Exception;)I
    .locals 3

    const/16 v0, 0x44e

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Ljava/io/IOException;

    if-nez v1, :cond_1

    const/16 p0, 0x44f

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-static {v1}, Lcom/huawei/hms/framework/common/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/framework/common/ExceptionCode;->getErrorCodeFromMsg(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_3

    return v2

    :cond_3
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/huawei/hms/framework/common/ExceptionCode;->getErrorCodeSocketTimeout(Ljava/lang/Exception;)I

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_5

    const p0, 0x1ae7e

    return p0

    :cond_5
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_6

    const p0, 0x1ae7f

    return p0

    :cond_6
    instance-of v0, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_7

    const p0, 0x1ae82

    return p0

    :cond_7
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_8

    const p0, 0x1ae83

    return p0

    :cond_8
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_9

    const p0, 0x1ae84

    return p0

    :cond_9
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_a

    const p0, 0x1ae7a

    return p0

    :cond_a
    instance-of p0, p0, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_c

    const-string p0, "connection has been shut down"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    const p0, 0x1ae86

    return p0

    :cond_b
    const p0, 0x1ae85

    return p0

    :cond_c
    return v2
.end method

.method private static getErrorCodeFromMsg(Ljava/lang/String;)I
    .locals 1

    const-string v0, "unexpected end of stream"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x1ae79

    goto/16 :goto_0

    :cond_0
    const-string v0, "unable to resolve host"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x1ae7a

    goto/16 :goto_0

    :cond_1
    const-string v0, "read error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x1ae7b

    goto :goto_0

    :cond_2
    const-string v0, "connection reset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x1ae7c

    goto :goto_0

    :cond_3
    const-string v0, "software caused connection abort"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x1ae7d

    goto :goto_0

    :cond_4
    const-string v0, "failed to connect to"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p0, 0x1ae7e

    goto :goto_0

    :cond_5
    const-string v0, "connection refused"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p0, 0x1ae81

    goto :goto_0

    :cond_6
    const-string v0, "connection timed out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p0, 0x1ae8d

    return p0

    :cond_7
    const-string v0, "no route to host"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p0, 0x1ae7f

    goto :goto_0

    :cond_8
    const-string v0, "network is unreachable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const p0, 0x1ae80

    goto :goto_0

    :cond_9
    const-string v0, "socket closed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x1ae87

    goto :goto_0

    :cond_a
    const/16 p0, 0x44e

    :goto_0
    return p0
.end method

.method private static getErrorCodeSocketTimeout(Ljava/lang/Exception;)I
    .locals 5

    const-string v0, "connect"

    const-string v1, "read"

    const-string v2, "write"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/huawei/hms/framework/common/ExceptionCode;->checkExceptionContainsKey(Ljava/lang/Exception;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const p0, 0x1ae78

    return p0

    :pswitch_0
    const p0, 0x1ae8d

    return p0

    :pswitch_1
    const p0, 0x1ae91

    return p0

    :pswitch_2
    const p0, 0x1ae8f

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x355996 -> :sswitch_2
        0x6c257df -> :sswitch_1
        0x38b478ea -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
