.class Lcom/huawei/hms/scankit/u;
.super Ljava/lang/Object;
.source "IRemoteLocalViewDelegateImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/v;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/v;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/u;->a:Lcom/huawei/hms/scankit/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/scankit/u;->a:Lcom/huawei/hms/scankit/v;

    iget-object p1, p1, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
