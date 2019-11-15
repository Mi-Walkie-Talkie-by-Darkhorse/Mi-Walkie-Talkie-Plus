.class public Lcom/ifengyu/im/imservice/manager/IMStackManager;
.super Ljava/lang/Object;
.source "IMStackManager.java"


# static fields
.field private static mActivityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/ifengyu/im/imservice/manager/IMStackManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackManager()Lcom/ifengyu/im/imservice/manager/IMStackManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mInstance:Lcom/ifengyu/im/imservice/manager/IMStackManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/manager/IMStackManager;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mInstance:Lcom/ifengyu/im/imservice/manager/IMStackManager;

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mInstance:Lcom/ifengyu/im/imservice/manager/IMStackManager;

    return-object v0
.end method


# virtual methods
.method public currentActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mActivityStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public popActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public popAllActivitys()V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMStackManager;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMStackManager;->popActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public popTopActivitys(Ljava/lang/Class;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/manager/IMStackManager;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/manager/IMStackManager;->popActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public pushActivity(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mActivityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mActivityStack:Ljava/util/Stack;

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMStackManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method
