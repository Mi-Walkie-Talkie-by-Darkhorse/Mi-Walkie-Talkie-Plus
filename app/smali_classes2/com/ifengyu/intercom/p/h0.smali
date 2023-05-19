.class public Lcom/ifengyu/intercom/p/h0;
.super Ljava/lang/Object;
.source "ProtobufUtil.java"


# direct methods
.method public static a(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "GB2312"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/ByteString;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 1

    :try_start_0
    const-string v0, "GB2312"

    .line 1
    invoke-static {p0, v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
