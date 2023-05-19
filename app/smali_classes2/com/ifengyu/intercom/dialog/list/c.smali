.class public Lcom/ifengyu/intercom/dialog/list/c;
.super Ljava/lang/Object;
.source "BottomSheetListItemModel.java"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/CharSequence;

.field g:Ljava/lang/CharSequence;

.field h:Ljava/lang/String;

.field i:Z

.field j:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/dialog/list/c;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ifengyu/intercom/dialog/list/c;->b:I

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/dialog/list/c;->c:I

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/dialog/list/c;->d:I

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/dialog/list/c;->e:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/dialog/list/c;->h:Ljava/lang/String;

    .line 8
    iput-boolean v0, p0, Lcom/ifengyu/intercom/dialog/list/c;->i:Z

    .line 9
    iput-object p1, p0, Lcom/ifengyu/intercom/dialog/list/c;->f:Ljava/lang/CharSequence;

    .line 10
    iput-object p2, p0, Lcom/ifengyu/intercom/dialog/list/c;->h:Ljava/lang/String;

    return-void
.end method
