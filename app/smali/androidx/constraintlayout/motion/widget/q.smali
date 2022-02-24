.class public Landroidx/constraintlayout/motion/widget/q;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/q$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field b:Landroidx/constraintlayout/widget/d;

.field c:Landroidx/constraintlayout/motion/widget/q$b;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/q$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/constraintlayout/motion/widget/q$b;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/q$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/util/SparseIntArray;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Landroid/view/MotionEvent;

.field private o:Z

.field private p:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

.field private q:Z

.field r:F

.field s:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->b:Landroidx/constraintlayout/widget/d;

    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/q;->d:Z

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    .line 6
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->f:Landroidx/constraintlayout/motion/widget/q$b;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->g:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->i:Ljava/util/HashMap;

    .line 10
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->j:Landroid/util/SparseIntArray;

    .line 11
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/q;->k:Z

    const/16 v0, 0x190

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/q;->l:I

    .line 13
    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->m:I

    .line 14
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    .line 15
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 16
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/motion/widget/q;->a(Landroid/content/Context;I)V

    .line 17
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    new-instance p3, Landroidx/constraintlayout/widget/b;

    invoke-direct {p3}, Landroidx/constraintlayout/widget/b;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->i:Ljava/util/HashMap;

    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "/"

    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 91
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->k:Z

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id getMap res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 94
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    const-string p2, "MotionScene"

    const-string v0, "error in parsing id"

    .line 95
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return p1
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/q;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/q;->m:I

    return p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 8

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    if-eqz v2, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_5

    .line 59
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/q;->k:Z

    if-eqz v5, :cond_1

    .line 61
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, -0x1

    const-string v7, "MotionScene"

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_1
    const-string v3, "StateSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    const-string v3, "OnSwipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "OnClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4
    const-string v4, "Transition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :sswitch_5
    const-string v3, "KeyFrameSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v3, "ConstraintSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 63
    :pswitch_0
    new-instance v2, Landroidx/constraintlayout/motion/widget/h;

    invoke-direct {v2, p1, v0}, Landroidx/constraintlayout/motion/widget/h;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 64
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->d(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 65
    :pswitch_1
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/q;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 66
    :pswitch_2
    new-instance v2, Landroidx/constraintlayout/widget/d;

    invoke-direct {v2, p1, v0}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->b:Landroidx/constraintlayout/widget/d;

    goto/16 :goto_5

    .line 67
    :pswitch_3
    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    :pswitch_4
    if-nez v1, :cond_3

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OnSwipe ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    new-instance v2, Landroidx/constraintlayout/motion/widget/t;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {v2, p1, v3, v0}, Landroidx/constraintlayout/motion/widget/t;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;Landroidx/constraintlayout/motion/widget/t;)Landroidx/constraintlayout/motion/widget/t;

    goto :goto_5

    .line 72
    :pswitch_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    new-instance v2, Landroidx/constraintlayout/motion/widget/q$b;

    invoke-direct {v2, p0, p1, v0}, Landroidx/constraintlayout/motion/widget/q$b;-><init>(Landroidx/constraintlayout/motion/widget/q;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-nez v1, :cond_4

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->c(Landroidx/constraintlayout/motion/widget/q$b;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 74
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v2, :cond_4

    .line 75
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 76
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v1

    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/q;->q:Z

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/t;->a(Z)V

    .line 77
    :cond_4
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->c(Landroidx/constraintlayout/motion/widget/q$b;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 79
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->f:Landroidx/constraintlayout/motion/widget/q$b;

    goto :goto_3

    .line 80
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    move-object v1, v2

    goto :goto_5

    .line 82
    :pswitch_6
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/q;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 83
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING UNKNOWN ATTRIBUTE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 84
    :cond_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 85
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_1
    move-exception p1

    .line 87
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_8
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_6
        -0x49df9cec -> :sswitch_5
        0x100d4975 -> :sswitch_4
        0x12a432c9 -> :sswitch_3
        0x138aac7b -> :sswitch_2
        0x2f487256 -> :sswitch_1
        0x526c4e31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13

    .line 96
    new-instance v0, Landroidx/constraintlayout/widget/b;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/b;-><init>()V

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/b;->a(Z)V

    .line 98
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_0
    const/4 v7, 0x1

    if-ge v4, v2, :cond_6

    .line 99
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 100
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 101
    iget-boolean v10, p0, Landroidx/constraintlayout/motion/widget/q;->k:Z

    if-eqz v10, :cond_0

    .line 102
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id string = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x59328327

    if-eq v10, v11, :cond_2

    const/16 v11, 0xd1b

    if-eq v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const-string v10, "id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const-string v10, "deriveConstraintsFrom"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, -0x1

    :goto_2
    if-eqz v8, :cond_5

    if-eq v8, v7, :cond_4

    goto :goto_3

    .line 104
    :cond_4
    invoke-direct {p0, p1, v9}, Landroidx/constraintlayout/motion/widget/q;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 105
    :cond_5
    invoke-direct {p0, p1, v9}, Landroidx/constraintlayout/motion/widget/q;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 106
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/q;->i:Ljava/util/HashMap;

    invoke-static {v9}, Landroidx/constraintlayout/motion/widget/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eq v5, v3, :cond_9

    .line 107
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:I

    if-eqz v1, :cond_7

    .line 108
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/b;->b(Z)V

    .line 109
    :cond_7
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eq v6, v3, :cond_8

    .line 110
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->j:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/q;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 38
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 39
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionScene:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 41
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 42
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_defaultDuration:I

    if-ne v2, v3, :cond_0

    .line 43
    iget v3, p0, Landroidx/constraintlayout/motion/widget/q;->l:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->l:I

    goto :goto_1

    .line 44
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_layoutDuringTransition:I

    if-ne v2, v3, :cond_1

    .line 45
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/q;->m:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/q;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object p0
.end method

.method static synthetic d(Landroidx/constraintlayout/motion/widget/q;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/q;->l:I

    return p0
.end method

.method private e(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->b:Landroidx/constraintlayout/widget/d;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/d;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method private f(I)Z
    .locals 4

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    :goto_0
    if-lez v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-gez v1, :cond_1

    return v2

    .line 14
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private g(I)V
    .locals 3

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/constraintlayout/motion/widget/q;->g(I)V

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/b;

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/b;

    if-nez v2, :cond_0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR! invalid deriveConstraintsFrom: @id/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/b;->a(Landroidx/constraintlayout/widget/b;)V

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->j:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    return-void
.end method

.method private n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->p:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a(FF)F
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/t;->b(FF)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a()I
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->i(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public a(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/q$b;
    .locals 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    .line 40
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/q;->c(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/q$b;

    .line 43
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->n(Landroidx/constraintlayout/motion/widget/q$b;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 45
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v5

    iget-boolean v6, p0, Landroidx/constraintlayout/motion/widget/q;->q:Z

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/t;->a(Z)V

    .line 46
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5, v6, v3}, Landroidx/constraintlayout/motion/widget/t;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz p4, :cond_2

    .line 47
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5, v6, v3}, Landroidx/constraintlayout/motion/widget/t;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz p4, :cond_3

    .line 49
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Landroidx/constraintlayout/motion/widget/t;->a(FF)F

    move-result v5

    .line 51
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v6

    if-ne v6, p1, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_1

    :cond_4
    const v6, 0x3f8ccccd    # 1.1f

    :goto_1
    mul-float v5, v5, v6

    cmpl-float v6, v5, v1

    if-lez v6, :cond_0

    move-object v2, v4

    move v1, v5

    goto :goto_0

    :cond_5
    return-object v2

    .line 52
    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    return-object p1
.end method

.method a(I)Landroidx/constraintlayout/widget/b;
    .locals 1

    const/4 v0, -0x1

    .line 112
    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/q;->a(III)Landroidx/constraintlayout/widget/b;

    move-result-object p1

    return-object p1
.end method

.method a(III)Landroidx/constraintlayout/widget/b;
    .locals 3

    .line 113
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->k:Z

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->b:Landroidx/constraintlayout/widget/d;

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/d;->a(III)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    move p1, p2

    .line 118
    :cond_1
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Warning could not find ConstraintSet id/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/constraintlayout/motion/widget/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " In MotionScene"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/b;

    return-object p1

    .line 121
    :cond_2
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/b;

    return-object p1
.end method

.method a(II)V
    .locals 6

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->b:Landroidx/constraintlayout/widget/d;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/d;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->b:Landroidx/constraintlayout/widget/d;

    invoke-virtual {v2, p2, v1, v1}, Landroidx/constraintlayout/widget/d;->a(III)I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    move v2, p2

    .line 5
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/q$b;

    .line 6
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 7
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->b(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v5

    if-eq v5, v0, :cond_5

    .line 8
    :cond_4
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 9
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->b(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 10
    :cond_5
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v4, :cond_6

    .line 11
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/q;->q:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/t;->a(Z)V

    :cond_6
    return-void

    .line 13
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->f:Landroidx/constraintlayout/motion/widget/q$b;

    .line 14
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/q$b;

    .line 15
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v5

    if-ne v5, p2, :cond_8

    move-object p1, v4

    goto :goto_2

    .line 16
    :cond_9
    new-instance p2, Landroidx/constraintlayout/motion/widget/q$b;

    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/q$b;-><init>(Landroidx/constraintlayout/motion/widget/q;Landroidx/constraintlayout/motion/widget/q$b;)V

    .line 17
    invoke-static {p2, v0}, Landroidx/constraintlayout/motion/widget/q$b;->b(Landroidx/constraintlayout/motion/widget/q$b;I)I

    .line 18
    invoke-static {p2, v2}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;I)I

    if-eq v0, v1, :cond_a

    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_a
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    return-void
.end method

.method a(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 12

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 129
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->p:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->d()Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->p:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 131
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->p:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-interface {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_a

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    goto/16 :goto_1

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v6, p0, Landroidx/constraintlayout/motion/widget/q;->s:F

    sub-float/2addr v4, v6

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Landroidx/constraintlayout/motion/widget/q;->r:F

    sub-float/2addr v6, v7

    float-to-double v7, v6

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_2

    float-to-double v7, v4

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_3

    .line 135
    :cond_2
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/q;->n:Landroid/view/MotionEvent;

    if-nez v7, :cond_4

    :cond_3
    return-void

    .line 136
    :cond_4
    invoke-virtual {p0, p2, v6, v4, v7}, Landroidx/constraintlayout/motion/widget/q;->a(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/q$b;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 137
    invoke-virtual {p3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/q$b;)V

    .line 138
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v4

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v6, v0}, Landroidx/constraintlayout/motion/widget/t;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 139
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/q;->n:Landroid/view/MotionEvent;

    .line 140
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/q;->n:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v5, 0x1

    :cond_5
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    .line 141
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->r:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/q;->s:F

    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/motion/widget/t;->f(FF)V

    goto :goto_1

    .line 142
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/q;->r:F

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/q;->s:F

    .line 144
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->n:Landroid/view/MotionEvent;

    .line 145
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 146
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/t;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 147
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->n:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/q;->n:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_7

    .line 148
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->n:Landroid/view/MotionEvent;

    return-void

    .line 149
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/t;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 150
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/q;->n:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/q;->n:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_8

    .line 151
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    goto :goto_0

    .line 152
    :cond_8
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    .line 153
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    iget p2, p0, Landroidx/constraintlayout/motion/widget/q;->r:F

    iget p3, p0, Landroidx/constraintlayout/motion/widget/q;->s:F

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/motion/widget/t;->e(FF)V

    :cond_9
    return-void

    .line 154
    :cond_a
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->o:Z

    if-nez v0, :cond_b

    .line 155
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/q;->p:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    invoke-virtual {v0, p1, v4, p2, p0}, Landroidx/constraintlayout/motion/widget/t;->a(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$f;ILandroidx/constraintlayout/motion/widget/q;)V

    .line 156
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/q;->r:F

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/motion/widget/q;->s:F

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_c

    .line 159
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->p:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-eqz p1, :cond_c

    .line 160
    invoke-interface {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a()V

    .line 161
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->p:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 162
    iget p1, p3, Landroidx/constraintlayout/motion/widget/MotionLayout;->e:I

    if-eq p1, v2, :cond_c

    .line 163
    invoke-virtual {p0, p3, p1}, Landroidx/constraintlayout/motion/widget/q;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    :cond_c
    return-void
.end method

.method a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 167
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 168
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 169
    invoke-direct {p0, v2}, Landroidx/constraintlayout/motion/widget/q;->f(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "MotionScene"

    const-string v0, "Cannot be derived from yourself"

    .line 170
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_0
    invoke-direct {p0, v2}, Landroidx/constraintlayout/motion/widget/q;->g(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 173
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/b;

    .line 174
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/widget/b;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 4

    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/q$b;

    .line 25
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->m(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 26
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->m(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/q$b$a;

    .line 27
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/q$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/q$b;

    .line 29
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->m(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 30
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->m(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/q$b$a;

    .line 31
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/q$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_1

    .line 32
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/q$b;

    .line 33
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->m(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 34
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->m(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/q$b$a;

    .line 35
    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/q$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/q$b;)V

    goto :goto_2

    .line 36
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/q$b;

    .line 37
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->m(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 38
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->m(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/q$b$a;

    .line 39
    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/q$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/q$b;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public a(Landroidx/constraintlayout/motion/widget/n;)V
    .locals 2

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->f:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    .line 124
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->d(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/h;

    .line 125
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/h;->a(Landroidx/constraintlayout/motion/widget/n;)V

    goto :goto_0

    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->d(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/h;

    .line 127
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/h;->a(Landroidx/constraintlayout/motion/widget/n;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Landroidx/constraintlayout/motion/widget/q$b;)V
    .locals 1

    .line 21
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz p1, :cond_0

    .line 22
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->q:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/t;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 53
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/q;->q:Z

    .line 54
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->q:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/t;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(I)Landroidx/constraintlayout/motion/widget/q$b;
    .locals 3

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/q$b;

    .line 3
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->l(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method b(FF)V
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/t;->c(FF)V

    :cond_0
    return-void
.end method

.method b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z
    .locals 7

    .line 6
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/q;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/q;->d:Z

    if-eqz v0, :cond_1

    return v1

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/q$b;

    .line 9
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->o(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->b(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v3

    const/4 v4, 0x1

    if-ne p2, v3, :cond_6

    .line 11
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->o(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    .line 12
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->o(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    .line 13
    :cond_4
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 14
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/q$b;)V

    .line 15
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->o(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result p2

    if-ne p2, v5, :cond_5

    .line 16
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f()V

    .line 17
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 18
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_1

    :cond_5
    const/high16 p2, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 20
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Z)V

    .line 21
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 22
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 23
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_1
    return v4

    .line 24
    :cond_6
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 25
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->o(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7

    .line 26
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->o(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 27
    :cond_7
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 28
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/q$b;)V

    .line 29
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->o(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result p2

    if-ne p2, v5, :cond_8

    .line 30
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g()V

    .line 31
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 32
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 34
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(Z)V

    .line 35
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 36
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 37
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :goto_2
    return v4

    :cond_9
    return v1
.end method

.method public b()[I
    .locals 4

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/q;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/q$b;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/motion/widget/q$b;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/q;->e(I)I

    move-result p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/q$b;

    .line 5
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->b(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 6
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method c(FF)V
    .locals 1

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/t;->d(FF)V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->h(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->l:I

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/q$b;->b(I)V

    goto :goto_0

    .line 7
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/q;->l:I

    :goto_0
    return-void
.end method

.method e()I
    .locals 1

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->a(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v0

    return v0
.end method

.method public f()Landroid/view/animation/Interpolator;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->e(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_6

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 5
    :cond_3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    .line 6
    :cond_4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 7
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->f(Landroidx/constraintlayout/motion/widget/q$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/c/a/a/c;->a(Ljava/lang/String;)La/c/a/a/c;

    move-result-object v0

    .line 8
    new-instance v1, Landroidx/constraintlayout/motion/widget/q$a;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/q$a;-><init>(Landroidx/constraintlayout/motion/widget/q;La/c/a/a/c;)V

    return-object v1

    .line 9
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    .line 10
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->g(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v1

    .line 11
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method g()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/t;->b()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method h()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/t;->c()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/t;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->j(Landroidx/constraintlayout/motion/widget/q$b;)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method k()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->b(Landroidx/constraintlayout/motion/widget/q$b;)I

    move-result v0

    return v0
.end method

.method l()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/t;->f()V

    :cond_0
    return-void
.end method

.method m()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/q$b;

    .line 2
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:Landroidx/constraintlayout/motion/widget/q$b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/q$b;->k(Landroidx/constraintlayout/motion/widget/q$b;)Landroidx/constraintlayout/motion/widget/t;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
