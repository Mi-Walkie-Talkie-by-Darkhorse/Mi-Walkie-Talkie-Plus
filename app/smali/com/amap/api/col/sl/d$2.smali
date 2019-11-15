.class final Lcom/amap/api/col/sl/d$2;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/d;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/d$2;->a:Lcom/amap/api/col/sl/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/d$2;->a:Lcom/amap/api/col/sl/d;

    invoke-static {v0}, Lcom/amap/api/col/sl/d;->b(Lcom/amap/api/col/sl/d;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
