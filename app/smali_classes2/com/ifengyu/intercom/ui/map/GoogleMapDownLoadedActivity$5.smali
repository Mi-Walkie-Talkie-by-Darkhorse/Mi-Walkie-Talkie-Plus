.class Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$5;
.super Ljava/lang/Object;
.source "GoogleMapDownLoadedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->c_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$5;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity$5;->a:Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownLoadedActivity;->finish()V

    return-void
.end method
