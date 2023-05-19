.class public Lcom/ifengyu/intercom/l/a/c/b;
.super Ljava/lang/Object;
.source "ChToneConstants.java"


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/a/c/b;->a()V

    return-void
.end method

.method public static a()V
    .locals 5

    const v0, 0x7f030015

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/l/a/c/b;->a:[Ljava/lang/String;

    const v0, 0x7f030011

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030013

    .line 3
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030012

    .line 4
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->q(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 5
    sput-object v3, Lcom/ifengyu/intercom/l/a/c/b;->b:[[Ljava/lang/String;

    return-void
.end method
