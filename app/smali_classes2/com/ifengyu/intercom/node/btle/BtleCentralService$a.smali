.class public Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;
.super Landroid/os/Binder;
.source "BtleCentralService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/btle/BtleCentralService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/btle/BtleCentralService;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/btle/BtleCentralService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/node/btle/BtleCentralService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    return-object v0
.end method

.method public b()Lcom/ifengyu/intercom/node/ConnectionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    return-object v0
.end method
