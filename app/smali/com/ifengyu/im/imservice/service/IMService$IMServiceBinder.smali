.class public Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;
.super Landroid/os/Binder;
.source "IMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/service/IMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IMServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/service/IMService;


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/service/IMService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;->this$0:Lcom/ifengyu/im/imservice/service/IMService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/ifengyu/im/imservice/service/IMService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/service/IMService$IMServiceBinder;->this$0:Lcom/ifengyu/im/imservice/service/IMService;

    return-object v0
.end method
