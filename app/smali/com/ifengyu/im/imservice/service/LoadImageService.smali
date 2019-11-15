.class public Lcom/ifengyu/im/imservice/service/LoadImageService;
.super Landroid/app/IntentService;
.source "LoadImageService.java"


# static fields
.field private static logger:Lcom/ifengyu/im/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/service/LoadImageService;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/service/LoadImageService;->logger:Lcom/ifengyu/im/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "LoadImageService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
