.class public Lcom/huawei/hms/scankit/p/Kc$a;
.super Ljava/lang/Object;
.source "HaLog60001.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Kc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Z


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/huawei/hms/scankit/p/Kc$a;->d:J

    .line 4
    iput-object p3, p0, Lcom/huawei/hms/scankit/p/Kc$a;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/huawei/hms/scankit/p/Kc$a;->c:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lcom/huawei/hms/scankit/p/Kc$a;->h:Z

    .line 7
    iput p6, p0, Lcom/huawei/hms/scankit/p/Kc$a;->i:I

    .line 8
    iput p7, p0, Lcom/huawei/hms/scankit/p/Kc$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ZIILcom/huawei/hms/scankit/p/Ic;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/huawei/hms/scankit/p/Kc$a;-><init>(JLjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method private a(J)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/huawei/hms/scankit/p/Kc$a;->e:J

    return-object p0
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$a;J)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/Kc$a;->a(J)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$a;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$a;Z)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$a;->a(Z)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method private a(Z)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/Kc$a;->j:Z

    return-object p0
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/Kc$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/huawei/hms/scankit/p/Kc$a;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Kc$a;->b(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Kc$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/huawei/hms/scankit/p/Kc$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/huawei/hms/scankit/p/Kc$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/huawei/hms/scankit/p/Kc$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/huawei/hms/scankit/p/Kc$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->h:Z

    return p0
.end method

.method static synthetic f(Lcom/huawei/hms/scankit/p/Kc$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/huawei/hms/scankit/p/Kc$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->a:I

    return p0
.end method

.method static synthetic h(Lcom/huawei/hms/scankit/p/Kc$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->i:I

    return p0
.end method

.method static synthetic i(Lcom/huawei/hms/scankit/p/Kc$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->j:Z

    return p0
.end method

.method static synthetic j(Lcom/huawei/hms/scankit/p/Kc$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hms/scankit/p/Kc$a;->e:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Lcom/huawei/hms/scankit/p/Kc$a;
    .locals 0

    .line 5
    iput p1, p0, Lcom/huawei/hms/scankit/p/Kc$a;->a:I

    return-object p0
.end method
