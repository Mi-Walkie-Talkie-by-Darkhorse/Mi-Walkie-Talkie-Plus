.class Lcom/xiaomi/account/openauth/AuthorizeActivityBase$2;
.super Ljava/lang/Object;
.source "AuthorizeActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->refreshWebView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$2;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$2;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onHideErrorUI()V

    return-void
.end method
