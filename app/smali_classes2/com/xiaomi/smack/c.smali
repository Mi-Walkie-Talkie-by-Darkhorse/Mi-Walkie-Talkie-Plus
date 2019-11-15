.class public Lcom/xiaomi/smack/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Throwable;)I
    .locals 5

    const/16 v2, 0x69

    const/4 v4, -0x1

    instance-of v0, p0, Lcom/xiaomi/smack/l;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/smack/l;

    invoke-virtual {v0}, Lcom/xiaomi/smack/l;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/smack/l;

    invoke-virtual {v0}, Lcom/xiaomi/smack/l;->a()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_1
    instance-of v3, v0, Ljava/net/SocketException;

    if-eqz v3, :cond_a

    const-string v0, "Network is unreachable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    const/16 v0, 0x66

    goto :goto_1

    :cond_2
    const-string v0, "Connection refused"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_3

    const/16 v0, 0x67

    goto :goto_1

    :cond_3
    const-string v0, "Connection timed out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    const-string v0, "EACCES (Permission denied)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x65

    goto :goto_1

    :cond_5
    const-string v0, "Connection reset by peer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_6

    const/16 v0, 0x6d

    goto :goto_1

    :cond_6
    const-string v0, "Broken pipe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_7

    const/16 v0, 0x6e

    goto :goto_1

    :cond_7
    const-string v0, "No route to host"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_8

    const/16 v0, 0x68

    goto :goto_1

    :cond_8
    const-string v0, "EINVAL (Invalid argument)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x6a

    goto :goto_1

    :cond_9
    const/16 v0, 0xc7

    goto :goto_1

    :cond_a
    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_b

    const/16 v0, 0x6b

    goto :goto_1

    :cond_b
    instance-of v0, p0, Lcom/xiaomi/smack/l;

    if-eqz v0, :cond_c

    const/16 v0, 0x18f

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    goto :goto_1

    :cond_d
    move-object v0, p0

    goto/16 :goto_0
.end method
