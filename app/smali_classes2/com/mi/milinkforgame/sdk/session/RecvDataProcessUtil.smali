.class public Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;
.super Ljava/lang/Object;
.source "RecvDataProcessUtil.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mHasListenerUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysHasListener;

.field private mHasSelected:Z

.field private mNoListenerUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysNoListener;

.field private mPushUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysWithPush;

.field private mSession:Lcom/mi/milinkforgame/sdk/session/Session;

.field private nowUtil:Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RecvDataProcessUtil"

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/milinkforgame/sdk/session/Session;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mHasSelected:Z

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mSession:Lcom/mi/milinkforgame/sdk/session/Session;

    return-void
.end method


# virtual methods
.method public handle()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mHasSelected:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->TAG:Ljava/lang/String;

    const-string v2, "has not select data process util"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->nowUtil:Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->handleMnsCode()V

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mHasSelected:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectHandleUtil(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/Request;)Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;
    .locals 2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/mi/milinkforgame/sdk/session/Request;->getListener()Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mHasListenerUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysHasListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysHasListener;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysHasListener;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mHasListenerUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysHasListener;

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mHasListenerUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysHasListener;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->nowUtil:Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;

    :goto_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->nowUtil:Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;

    invoke-virtual {v0, p1, p2}, Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;->setParam(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/Request;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mHasSelected:Z

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mNoListenerUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysNoListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysNoListener;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysNoListener;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mNoListenerUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysNoListener;

    :cond_2
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mNoListenerUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysNoListener;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->nowUtil:Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mPushUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysWithPush;

    if-nez v0, :cond_4

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysWithPush;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mSession:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysWithPush;-><init>(Lcom/mi/milinkforgame/sdk/session/Session;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mPushUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysWithPush;

    :cond_4
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->mPushUtil:Lcom/mi/milinkforgame/sdk/session/MnsCodeCopeWaysWithPush;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/RecvDataProcessUtil;->nowUtil:Lcom/mi/milinkforgame/sdk/session/IMnsCodeCopeWays;

    goto :goto_0
.end method
