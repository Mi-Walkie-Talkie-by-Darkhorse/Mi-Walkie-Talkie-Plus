.class Lcom/amap/api/mapcore/util/ez$1;
.super Ljava/lang/Object;
.source "BottomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/ez;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ez;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ez;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ez$1;->a:Lcom/amap/api/mapcore/util/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ez$1;->a:Lcom/amap/api/mapcore/util/ez;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ez;->dismiss()V

    return-void
.end method
