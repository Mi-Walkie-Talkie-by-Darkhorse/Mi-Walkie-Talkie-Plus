.class Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$a;
.super Ljava/lang/Object;
.source "BaseActivity1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$a;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$a;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
