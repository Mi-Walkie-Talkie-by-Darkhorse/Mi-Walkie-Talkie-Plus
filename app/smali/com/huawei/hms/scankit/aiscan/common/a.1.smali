.class public Lcom/huawei/hms/scankit/aiscan/common/a;
.super Ljava/lang/Exception;
.source "AIScanException.java"


# static fields
.field protected static final a:Z

.field protected static final b:[Ljava/lang/StackTraceElement;

.field private static final c:Lcom/huawei/hms/scankit/aiscan/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "surefire.test.class.path"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/huawei/hms/scankit/aiscan/common/a;->a:Z

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 2
    sput-object v0, Lcom/huawei/hms/scankit/aiscan/common/a;->b:[Ljava/lang/StackTraceElement;

    .line 3
    new-instance v1, Lcom/huawei/hms/scankit/aiscan/common/a;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/aiscan/common/a;-><init>()V

    sput-object v1, Lcom/huawei/hms/scankit/aiscan/common/a;->c:Lcom/huawei/hms/scankit/aiscan/common/a;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/aiscan/common/a;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/huawei/hms/scankit/aiscan/common/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/a;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/aiscan/common/a;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/a;->c:Lcom/huawei/hms/scankit/aiscan/common/a;

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;
    .locals 1

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/aiscan/common/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
