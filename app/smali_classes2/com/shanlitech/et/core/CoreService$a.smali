.class public Lcom/shanlitech/et/core/CoreService$a;
.super Landroid/os/Binder;
.source "CoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/core/CoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/shanlitech/et/core/CoreService;


# direct methods
.method public constructor <init>(Lcom/shanlitech/et/core/CoreService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/core/CoreService$a;->a:Lcom/shanlitech/et/core/CoreService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/shanlitech/et/core/CoreService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/CoreService$a;->a:Lcom/shanlitech/et/core/CoreService;

    return-object v0
.end method
