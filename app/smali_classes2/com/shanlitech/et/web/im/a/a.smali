.class public abstract Lcom/shanlitech/et/web/im/a/a;
.super Ljava/lang/Object;
.source "AccountIMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private uid()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract isDispatcher()Z
.end method
