.class final Lcom/amap/api/col/l3/fg$1;
.super Ljava/lang/Object;
.source "BottomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/fg;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/fg;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/fg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/fg$1;->a:Lcom/amap/api/col/l3/fg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amap/api/col/l3/fg$1;->a:Lcom/amap/api/col/l3/fg;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
