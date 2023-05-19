.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/fragment/x1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/x1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;

    iput p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/x1;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/x1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;

    iget v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/x1;->b:I

    check-cast p1, Lcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->u3(ILcom/ifengyu/intercom/http/entity/PrivacyInfoEntity;)V

    return-void
.end method
