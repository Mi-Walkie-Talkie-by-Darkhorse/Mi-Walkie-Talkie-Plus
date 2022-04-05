.class Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$a;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$a;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$a;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView$b;->run()V

    :cond_0
    return-void
.end method
