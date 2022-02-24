.class Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$d;
.super Ljava/lang/Object;
.source "UpdateMcuActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$d;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$d;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$d;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V

    :cond_0
    return-void
.end method
