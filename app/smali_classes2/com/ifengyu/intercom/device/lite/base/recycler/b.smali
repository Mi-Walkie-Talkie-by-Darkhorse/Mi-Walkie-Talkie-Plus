.class public final synthetic Lcom/ifengyu/intercom/device/lite/base/recycler/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/base/recycler/c;

.field public final synthetic b:Lcom/ifengyu/intercom/device/lite/base/recycler/d;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/base/recycler/c;Lcom/ifengyu/intercom/device/lite/base/recycler/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/b;->a:Lcom/ifengyu/intercom/device/lite/base/recycler/c;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/b;->b:Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/b;->a:Lcom/ifengyu/intercom/device/lite/base/recycler/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/base/recycler/b;->b:Lcom/ifengyu/intercom/device/lite/base/recycler/d;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->m(Lcom/ifengyu/intercom/device/lite/base/recycler/d;Landroid/view/View;)V

    return-void
.end method
