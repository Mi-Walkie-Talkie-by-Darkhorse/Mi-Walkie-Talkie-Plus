.class Lcom/ifengyu/intercom/l/b/c/u1$a;
.super Ljava/lang/Object;
.source "Mi3SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/c/u1;->l3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/l/b/c/u1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/c/u1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1$a;->a:Lcom/ifengyu/intercom/l/b/c/u1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/u1$a;->a:Lcom/ifengyu/intercom/l/b/c/u1;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/c/u1;->g3(Lcom/ifengyu/intercom/l/b/c/u1;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/l/b/c/t1;->x3(Ljava/lang/String;)Lcom/ifengyu/intercom/l/b/c/t1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    return-void
.end method
