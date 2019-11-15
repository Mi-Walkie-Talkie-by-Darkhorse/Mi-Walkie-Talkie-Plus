.class Lcom/ifengyu/intercom/ui/map/b$1;
.super Ljava/lang/Object;
.source "OsmMapOperate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b$1;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b$1;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/b;)Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    move-result-object v0

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    :cond_0
    return v2
.end method
