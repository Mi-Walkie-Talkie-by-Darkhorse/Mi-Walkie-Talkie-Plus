.class public Lcom/ifengyu/intercom/lite/dialog/list/c;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/CharSequence;

.field g:Ljava/lang/String;

.field h:Z

.field i:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/c;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/c;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/c;->c:I

    iput v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/c;->d:I

    iput v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/c;->e:I

    const-string v1, ""

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/c;->g:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/c;->h:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/c;->f:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/c;->g:Ljava/lang/String;

    return-void
.end method
