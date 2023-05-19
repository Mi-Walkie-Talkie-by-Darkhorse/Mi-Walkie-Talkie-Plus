.class final Lcom/blankj/utilcode/util/LogUtils$j;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/blankj/utilcode/util/LogUtils$j;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/blankj/utilcode/util/LogUtils$j;->b:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/blankj/utilcode/util/LogUtils$j;->c:Ljava/lang/String;

    return-void
.end method
