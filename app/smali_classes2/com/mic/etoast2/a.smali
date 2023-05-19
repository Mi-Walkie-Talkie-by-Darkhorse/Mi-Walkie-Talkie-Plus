.class public Lcom/mic/etoast2/a;
.super Ljava/lang/Object;
.source "EToast2.java"


# static fields
.field private static f:Landroid/view/View;

.field private static g:Ljava/util/Timer;

.field private static h:Landroid/widget/Toast;

.field private static i:Landroid/os/Handler;


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Ljava/lang/Long;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/widget/Toast;

.field private e:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mic/etoast2/a;->b:Ljava/lang/Long;

    const-string v1, "window"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/mic/etoast2/a;->a:Landroid/view/WindowManager;

    .line 4
    iput-object p2, p0, Lcom/mic/etoast2/a;->e:Ljava/lang/CharSequence;

    if-nez p3, :cond_0

    .line 5
    iput-object v0, p0, Lcom/mic/etoast2/a;->b:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const-wide/16 v0, 0xdac

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lcom/mic/etoast2/a;->b:Ljava/lang/Long;

    .line 7
    :cond_1
    :goto_0
    sget-object p3, Lcom/mic/etoast2/a;->h:Landroid/widget/Toast;

    if-nez p3, :cond_4

    const/4 p3, 0x0

    .line 8
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/mic/etoast2/a;->d:Landroid/widget/Toast;

    .line 9
    invoke-virtual {p2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    sput-object p2, Lcom/mic/etoast2/a;->f:Landroid/view/View;

    .line 10
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/mic/etoast2/a;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 p3, -0x2

    .line 11
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 12
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p3, -0x3

    .line 13
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 p3, -0x1

    .line 14
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string p3, "EToast2"

    .line 15
    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p2, p0, Lcom/mic/etoast2/a;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 p3, 0x98

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p3, 0x51

    .line 17
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 p3, 0xc8

    .line 18
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 19
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-le p3, v0, :cond_3

    .line 20
    invoke-static {p1}, Lb/d/a/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x1a

    if-lt p3, p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/mic/etoast2/a;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7f6

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/mic/etoast2/a;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x7d2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_3
    const/16 p1, 0x7d5

    .line 23
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 24
    :cond_4
    :goto_1
    sget-object p1, Lcom/mic/etoast2/a;->i:Landroid/os/Handler;

    if-nez p1, :cond_5

    .line 25
    new-instance p1, Lcom/mic/etoast2/a$a;

    invoke-direct {p1, p0}, Lcom/mic/etoast2/a$a;-><init>(Lcom/mic/etoast2/a;)V

    sput-object p1, Lcom/mic/etoast2/a;->i:Landroid/os/Handler;

    :cond_5
    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/mic/etoast2/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/mic/etoast2/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/mic/etoast2/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/mic/etoast2/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mic/etoast2/a;->a:Landroid/view/WindowManager;

    sget-object v1, Lcom/mic/etoast2/a;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    sget-object v0, Lcom/mic/etoast2/a;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    sget-object v0, Lcom/mic/etoast2/a;->h:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/mic/etoast2/a;->g:Ljava/util/Timer;

    .line 5
    iput-object v0, p0, Lcom/mic/etoast2/a;->d:Landroid/widget/Toast;

    .line 6
    sput-object v0, Lcom/mic/etoast2/a;->h:Landroid/widget/Toast;

    .line 7
    sput-object v0, Lcom/mic/etoast2/a;->f:Landroid/view/View;

    .line 8
    sput-object v0, Lcom/mic/etoast2/a;->i:Landroid/os/Handler;

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mic/etoast2/a;->d:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    sget-object v0, Lcom/mic/etoast2/a;->h:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mic/etoast2/a;->d:Landroid/widget/Toast;

    sput-object v0, Lcom/mic/etoast2/a;->h:Landroid/widget/Toast;

    .line 3
    iget-object v0, p0, Lcom/mic/etoast2/a;->a:Landroid/view/WindowManager;

    sget-object v1, Lcom/mic/etoast2/a;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/mic/etoast2/a;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/mic/etoast2/a;->g:Ljava/util/Timer;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/mic/etoast2/a;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    sget-object v0, Lcom/mic/etoast2/a;->h:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/mic/etoast2/a;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/mic/etoast2/a;->g:Ljava/util/Timer;

    .line 8
    new-instance v1, Lcom/mic/etoast2/a$b;

    invoke-direct {v1, p0}, Lcom/mic/etoast2/a$b;-><init>(Lcom/mic/etoast2/a;)V

    iget-object v2, p0, Lcom/mic/etoast2/a;->b:Ljava/lang/Long;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
