.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/t;->a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/t;->a:Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->l3(Landroid/graphics/Bitmap;)V

    return-void
.end method
