.class Lcom/ifengyu/intercom/ui/map/b$a;
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b$a;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->l()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/b$a;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/b;)Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    move-result-object p1

    const v0, 0x7f0800f4

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->a(I)V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    :cond_0
    return p2
.end method
