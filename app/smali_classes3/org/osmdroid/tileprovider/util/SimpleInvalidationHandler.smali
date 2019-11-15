.class public Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;
.super Landroid/os/Handler;
.source "SimpleInvalidationHandler.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;->mView:Landroid/view/View;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
