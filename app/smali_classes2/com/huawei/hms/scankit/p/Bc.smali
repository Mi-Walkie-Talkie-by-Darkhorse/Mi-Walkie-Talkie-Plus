.class public Lcom/huawei/hms/scankit/p/Bc;
.super Ljava/lang/Object;
.source "GlobalVariable.java"


# static fields
.field public static a:Z = true

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Z = false

.field public static e:F = -1.0f

.field public static f:I = 0x0

.field public static g:I = 0x0

.field public static h:Z = false

.field public static i:Z = false

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Z = false

.field public static n:Z = false

.field public static o:Z = false

.field public static p:Z = false

.field public static q:[Z

.field public static r:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [Z

    .line 1
    sput-object v0, Lcom/huawei/hms/scankit/p/Bc;->q:[Z

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Bc;->r:Ljava/util/Stack;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->s:Z

    .line 4
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    const-string v0, "BUILDING FLAG"

    const-string v1, "use lite sdk"

    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->d:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 2
    sput v1, Lcom/huawei/hms/scankit/p/Bc;->e:F

    .line 3
    sput v0, Lcom/huawei/hms/scankit/p/Bc;->f:I

    .line 4
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    .line 5
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    .line 6
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->m:Z

    .line 7
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->o:Z

    .line 8
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->h:Z

    .line 9
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    .line 10
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->j:Z

    .line 11
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->n:Z

    const/16 v0, 0x8

    new-array v0, v0, [Z

    .line 12
    sput-object v0, Lcom/huawei/hms/scankit/p/Bc;->q:[Z

    .line 13
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/Bc;->r:Ljava/util/Stack;

    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->s:Z

    return-void
.end method

.method public static a(I)V
    .locals 3

    .line 15
    rem-int/lit8 v0, p0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 16
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->k:Z

    .line 17
    :cond_0
    rem-int/lit8 v0, p0, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 18
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    .line 19
    :cond_1
    rem-int/lit8 p0, p0, 0x5

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 20
    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->m:Z

    :cond_2
    return-void
.end method

.method public static a(Lcom/huawei/hms/scankit/E;)V
    .locals 2

    .line 21
    invoke-static {}, Lcom/huawei/hms/scankit/p/Bc;->a()V

    .line 22
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/E;->e:Z

    sput-boolean v0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    .line 23
    iget-boolean v1, p0, Lcom/huawei/hms/scankit/E;->g:Z

    sput-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->s:Z

    if-nez v0, :cond_0

    .line 24
    iget p0, p0, Lcom/huawei/hms/scankit/E;->f:I

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Bc;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 25
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Bc;->a(I)V

    :goto_0
    return-void
.end method
