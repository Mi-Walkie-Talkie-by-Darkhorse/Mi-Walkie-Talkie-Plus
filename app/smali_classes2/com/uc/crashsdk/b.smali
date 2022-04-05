.class public Lcom/uc/crashsdk/b;
.super Ljava/lang/Object;


# static fields
.field private static A:Z

.field private static B:Z

.field private static C:Z

.field private static D:Z

.field private static E:Z

.field private static final F:Ljava/lang/Object;

.field private static G:Ljava/lang/String;

.field private static H:I

.field private static I:Z

.field private static J:Z

.field private static K:Z

.field private static L:Ljava/io/RandomAccessFile;

.field private static M:Z

.field private static final N:Ljava/lang/Object;

.field private static O:Ljava/lang/String;

.field private static P:Z

.field private static volatile Q:[Ljava/lang/Object;

.field private static R:Ljava/lang/Runnable;

.field private static S:Z

.field private static T:J

.field private static final U:Ljava/lang/Object;

.field private static V:J

.field private static W:Z

.field private static X:Z

.field private static Y:Z

.field private static Z:J

.field public static a:Z

.field private static final aa:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ab:Z

.field private static ac:Ljava/lang/String;

.field private static ad:Z

.field private static ae:Z

.field private static af:Z

.field private static ag:Z

.field private static ah:Z

.field private static final ai:Ljava/lang/Object;

.field private static aj:Landroid/app/PendingIntent;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static final e:Ljava/lang/Object;

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field static final synthetic i:Z

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Z

.field private static x:Z

.field private static volatile y:Z

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/uc/crashsdk/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/uc/crashsdk/b;->i:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/b;->j:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->k:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->l:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->m:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->n:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->o:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->p:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->q:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->r:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->s:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->t:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->u:Ljava/lang/String;

    sput-object v0, Lcom/uc/crashsdk/b;->v:Ljava/lang/String;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/uc/crashsdk/b;->a:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->b:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->c:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->d:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/uc/crashsdk/b;->e:Ljava/lang/Object;

    sput-boolean v2, Lcom/uc/crashsdk/b;->f:Z

    sput-boolean v1, Lcom/uc/crashsdk/b;->g:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->h:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->w:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->x:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->y:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->z:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->A:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->B:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->C:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->D:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->E:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/uc/crashsdk/b;->F:Ljava/lang/Object;

    sput-object v0, Lcom/uc/crashsdk/b;->G:Ljava/lang/String;

    sput v2, Lcom/uc/crashsdk/b;->H:I

    sput-boolean v2, Lcom/uc/crashsdk/b;->I:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->J:Z

    sput-boolean v1, Lcom/uc/crashsdk/b;->K:Z

    sput-object v0, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    sput-boolean v2, Lcom/uc/crashsdk/b;->M:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/b;->N:Ljava/lang/Object;

    sput-object v0, Lcom/uc/crashsdk/b;->O:Ljava/lang/String;

    sput-boolean v2, Lcom/uc/crashsdk/b;->P:Z

    sput-object v0, Lcom/uc/crashsdk/b;->Q:[Ljava/lang/Object;

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x65

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/b;->R:Ljava/lang/Runnable;

    sput-boolean v2, Lcom/uc/crashsdk/b;->S:Z

    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/uc/crashsdk/b;->T:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/b;->U:Ljava/lang/Object;

    sput-wide v3, Lcom/uc/crashsdk/b;->V:J

    sput-boolean v2, Lcom/uc/crashsdk/b;->W:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->X:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->Y:Z

    sput-wide v3, Lcom/uc/crashsdk/b;->Z:J

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/b;->aa:Ljava/util/WeakHashMap;

    sput-boolean v2, Lcom/uc/crashsdk/b;->ab:Z

    sput-object v0, Lcom/uc/crashsdk/b;->ac:Ljava/lang/String;

    sput-boolean v2, Lcom/uc/crashsdk/b;->ad:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->ae:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->af:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->ag:Z

    sput-boolean v2, Lcom/uc/crashsdk/b;->ah:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/b;->ai:Ljava/lang/Object;

    sput-object v0, Lcom/uc/crashsdk/b;->aj:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static A()V
    .locals 2

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/crashsdk/b;->ac:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x81

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_0
    return-void
.end method

.method static B()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/b;->ac:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static C()Z
    .locals 3

    sget-boolean v0, Lcom/uc/crashsdk/b;->ad:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/uc/crashsdk/b;->ae:Z

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_1
    sput-boolean v1, Lcom/uc/crashsdk/b;->ad:Z

    :cond_2
    sget-boolean v0, Lcom/uc/crashsdk/b;->ae:Z

    return v0
.end method

.method static D()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->af:Z

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x22

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_0
    return-void
.end method

.method public static E()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/b;->af:Z

    return v0
.end method

.method public static F()I
    .locals 2

    invoke-static {}, Lcom/uc/crashsdk/b;->R()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/b;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x6

    return v0

    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/b;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x5

    return v0

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static G()I
    .locals 4

    invoke-static {}, Lcom/uc/crashsdk/b;->S()Z

    move-result v0

    invoke-static {}, Lcom/uc/crashsdk/b;->T()Z

    move-result v1

    invoke-static {}, Lcom/uc/crashsdk/b;->U()Z

    move-result v2

    invoke-static {}, Lcom/uc/crashsdk/b;->q()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    return v0

    :cond_0
    if-eqz v1, :cond_1

    const/16 v0, 0xe

    return v0

    :cond_1
    if-eqz v2, :cond_2

    const/16 v0, 0x10

    return v0

    :cond_2
    const/16 v0, 0x62

    return v0

    :cond_3
    invoke-static {}, Lcom/uc/crashsdk/b;->p()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    return v0

    :cond_4
    if-eqz v1, :cond_5

    const/16 v0, 0xd

    return v0

    :cond_5
    if-eqz v2, :cond_6

    const/16 v0, 0xf

    return v0

    :cond_6
    const/16 v0, 0x61

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method static H()V
    .locals 5

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    sget v1, Lcom/uc/crashsdk/b;->H:I

    int-to-long v1, v1

    const/4 v3, 0x0

    const-string v4, "12"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSet(IJLjava/lang/String;[Ljava/lang/Object;)J

    const/16 v0, 0x1e

    sget-boolean v1, Lcom/uc/crashsdk/b;->K:Z

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_0
    return-void
.end method

.method public static I()Z
    .locals 2

    sget-boolean v0, Lcom/uc/crashsdk/b;->ah:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/uc/crashsdk/b;->ai:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/uc/crashsdk/b;->ah:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/b;->ab()Z

    move-result v1

    sput-boolean v1, Lcom/uc/crashsdk/b;->ag:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/b;->ah:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/uc/crashsdk/b;->ag:Z

    return v0
.end method

.method public static J()V
    .locals 3

    invoke-static {}, Lcom/uc/crashsdk/e;->E()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->aj:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/g;->h()I

    move-result v0

    if-gez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->aj:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static K()Z
    .locals 6

    sget-object v0, Lcom/uc/crashsdk/b;->aj:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Restart intent is null!"

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    const-string v0, "restarting ..."

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    sget-object v4, Lcom/uc/crashsdk/b;->aj:Landroid/app/PendingIntent;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method static synthetic L()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->ab:Z

    return v0
.end method

.method static synthetic M()Ljava/util/WeakHashMap;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/b;->aa:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method private static N()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/b;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ss"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->j:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/b;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ctn"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->l:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method private static P()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/b;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "cta"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->m:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method private static Q()V
    .locals 5

    sget-boolean v0, Lcom/uc/crashsdk/b;->y:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/uc/crashsdk/b;->x:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->F:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/uc/crashsdk/b;->y:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/b;->d(Ljava/lang/String;)Z

    invoke-static {}, Lcom/uc/crashsdk/b;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->O()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "f"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/uc/crashsdk/b;->z:Z

    const-string v4, "b"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/uc/crashsdk/b;->A:Z

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/uc/crashsdk/b;->C:Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/uc/crashsdk/b;->D:Z

    sget-boolean v2, Lcom/uc/crashsdk/b;->C:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lcom/uc/crashsdk/b;->B:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/uc/crashsdk/b;->z:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/uc/crashsdk/b;->A:Z

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/uc/crashsdk/b;->o()Z

    move-result v1

    sput-boolean v1, Lcom/uc/crashsdk/b;->E:Z

    sput-boolean v1, Lcom/uc/crashsdk/b;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/b;->w()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/uc/crashsdk/b;->W()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    sput-boolean v3, Lcom/uc/crashsdk/b;->y:Z

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_7
    :goto_3
    return-void
.end method

.method private static R()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/b;->Q()V

    sget-boolean v0, Lcom/uc/crashsdk/b;->B:Z

    return v0
.end method

.method private static S()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/b;->Q()V

    sget-boolean v0, Lcom/uc/crashsdk/b;->C:Z

    return v0
.end method

.method private static T()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/b;->Q()V

    sget-boolean v0, Lcom/uc/crashsdk/b;->D:Z

    return v0
.end method

.method private static U()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/b;->Q()V

    sget-boolean v0, Lcom/uc/crashsdk/b;->E:Z

    return v0
.end method

.method private static V()V
    .locals 2

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    sget-boolean v1, Lcom/uc/crashsdk/b;->w:Z

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_0
    return-void
.end method

.method private static W()V
    .locals 4

    sget-boolean v0, Lcom/uc/crashsdk/b;->S:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/uc/crashsdk/b;->S:Z

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->P()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    invoke-static {}, Lcom/uc/crashsdk/b;->Y()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    sget-object v3, Lcom/uc/crashsdk/b;->O:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/uc/crashsdk/b;->Q:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v0}, Lcom/uc/crashsdk/b;->a([Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_3
    sput-boolean v1, Lcom/uc/crashsdk/b;->P:Z

    invoke-static {}, Lcom/uc/crashsdk/b;->X()V

    return-void
.end method

.method private static X()V
    .locals 4

    sget-object v0, Lcom/uc/crashsdk/b;->R:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/crashsdk/b;->R:Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    return-void

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->Q:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/b;->Y()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/uc/crashsdk/b;->R:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/uc/crashsdk/b;->R:Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private static Y()[Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/uc/crashsdk/b;->U:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/uc/crashsdk/b;->V:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/uc/crashsdk/b;->V:J

    sget-boolean v3, Lcom/uc/crashsdk/b;->w:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    new-array v3, v6, [Ljava/lang/Object;

    const-string v6, "e"

    aput-object v6, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v4

    monitor-exit v0

    return-object v3

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "f"

    aput-object v2, v1, v5

    sget-wide v2, Lcom/uc/crashsdk/b;->V:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    monitor-exit v0

    return-object v1

    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "b"

    aput-object v2, v1, v5

    sget-wide v2, Lcom/uc/crashsdk/b;->V:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static Z()Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroid/app/Application;

    const-string v2, "mLoadedApk"

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "mActivityThread"

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static a()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/uc/crashsdk/b;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "LLUN"

    sput-object v0, Lcom/uc/crashsdk/b;->G:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-le v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_8

    aget-byte v5, v0, v4

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    const/16 v5, 0x31

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v6, 0x61

    if-lt v5, v6, :cond_5

    const/16 v7, 0x7a

    if-gt v5, v7, :cond_5

    add-int/lit8 v5, v5, 0x41

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v6, 0x41

    if-lt v5, v6, :cond_6

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_6

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-lt v5, v3, :cond_7

    const/16 v6, 0x39

    if-gt v5, v6, :cond_7

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v5, 0x32

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_8
    if-lez v2, :cond_9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->G:Ljava/lang/String;

    :goto_2
    sget-object v0, Lcom/uc/crashsdk/b;->G:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "debug.crs."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lcom/uc/crashsdk/b;->i:Z

    if-eqz p0, :cond_9

    goto/16 :goto_5

    :pswitch_0
    invoke-static {}, Lcom/uc/crashsdk/a/h;->d()V

    const/16 p0, 0x66

    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(I)V

    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/uc/crashsdk/e;->B()V

    return-void

    :pswitch_1
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->P()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    new-instance p0, Lcom/uc/crashsdk/a/e;

    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    return-void

    :pswitch_3
    :try_start_1
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->N()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/uc/crashsdk/b;->M:Z

    if-nez v1, :cond_1

    sget-boolean p0, Lcom/uc/crashsdk/b;->P:Z

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/b;->Y()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/b;->a([Ljava/lang/Object;)V

    sput-boolean v0, Lcom/uc/crashsdk/b;->P:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    invoke-static {}, Lcom/uc/crashsdk/b;->Z()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v2, 0x0

    const-string v3, "mActivities"

    invoke-static {p0, v2, v3}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    :try_start_2
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v4, "activity"

    invoke-static {v0, v2, v4}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    if-eqz v4, :cond_5

    const-string v5, "paused"

    invoke-static {v0, v2, v5}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "stopped"

    invoke-static {v0, v2, v6}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v6, Lcom/uc/crashsdk/b;->aa:Ljava/util/WeakHashMap;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v5, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x2

    :goto_3
    :try_start_3
    sget-object v5, Lcom/uc/crashsdk/b;->aa:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p0

    :cond_5
    :goto_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {v3}, Lcom/uc/crashsdk/b;->b(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_7
    return-void

    :catchall_3
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    return-void

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 1

    sput-boolean p0, Lcom/uc/crashsdk/b;->K:Z

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    invoke-static {v0, p0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_0
    return-void
.end method

.method private static a([Ljava/lang/Object;)V
    .locals 8

    sput-object p0, Lcom/uc/crashsdk/b;->Q:[Ljava/lang/Object;

    sget-object v0, Lcom/uc/crashsdk/b;->N:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/uc/crashsdk/b;->T:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_0

    const-string p0, "crashsdk"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Update state generation %d, last is: %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v1

    sget-wide v4, Lcom/uc/crashsdk/b;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    sput-wide v4, Lcom/uc/crashsdk/b;->T:J

    invoke-static {}, Lcom/uc/crashsdk/b;->N()Ljava/lang/String;

    move-result-object p0

    sget-boolean v3, Lcom/uc/crashsdk/b;->d:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    sget-object v3, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    sput-object v4, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    :cond_1
    sget-boolean v3, Lcom/uc/crashsdk/b;->M:Z

    invoke-static {p0, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeChangeState(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean v1, Lcom/uc/crashsdk/b;->M:Z

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "write state failed: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/uc/crashsdk/b;->M:Z

    if-eqz v3, :cond_5

    :cond_3
    sget-object v3, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    sput-object v4, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v3, p0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    sput-boolean v1, Lcom/uc/crashsdk/b;->M:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_0
    :try_start_3
    sget-object p0, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    sget-object p0, Lcom/uc/crashsdk/b;->L:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_4
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    sput-object v2, Lcom/uc/crashsdk/b;->O:Ljava/lang/String;

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sput-object v4, Lcom/uc/crashsdk/b;->Q:[Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    check-cast p0, Landroid/app/Application;

    :try_start_0
    new-instance v0, Lcom/uc/crashsdk/c;

    invoke-direct {v0}, Lcom/uc/crashsdk/c;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/uc/crashsdk/g;->J()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/b;->z()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/uc/crashsdk/JNIBridge;->nativeOpenFile(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can not open file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "crashsdk"

    invoke-static {p2, p1, v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    return v2

    :cond_0
    const/4 p1, 0x1

    :try_start_1
    invoke-static {v0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeLockFile(IZ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Lcom/uc/crashsdk/a/e;->a()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    :try_start_3
    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeLockFile(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCloseFile(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto/16 :goto_7

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    :try_start_5
    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeLockFile(IZ)Z

    :cond_2
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCloseFile(I)V

    throw p1

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez p1, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_8
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_4
    :goto_0
    :try_start_9
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {p1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    :try_start_a
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    :try_start_b
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_8

    :catch_2
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_2

    :catch_3
    move-exception p2

    move-object v1, p1

    goto :goto_5

    :cond_5
    :goto_2
    :try_start_d
    invoke-virtual {p2}, Lcom/uc/crashsdk/a/e;->a()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v1, :cond_6

    :try_start_e
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_3

    :catch_4
    move-exception p2

    :try_start_f
    invoke-static {p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_6
    :goto_3
    :try_start_10
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_6

    :catchall_4
    move-exception p2

    if-eqz v1, :cond_7

    :try_start_11
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_4

    :catch_5
    move-exception v0

    :try_start_12
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catch_6
    move-exception p2

    :goto_5
    :try_start_13
    invoke-static {p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    :goto_6
    move p2, v2

    :goto_7
    monitor-exit p0

    return p2

    :goto_8
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw p1
.end method

.method private static aa()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/cgroup"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-static {v0, v2, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const-string v2, "/bg_non_interactive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/background"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static ab()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/os/Process;

    const-string v3, "isIsolated"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const v3, 0x186a0

    rem-int/2addr v2, v3

    const v3, 0x182b8

    if-lt v2, v3, :cond_1

    const v3, 0x1869f

    if-gt v2, v3, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/b;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "ctj"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->k:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/uc/crashsdk/b;->ac:Ljava/lang/String;

    return-object p0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/uc/crashsdk/b;->H:I

    invoke-static {}, Lcom/uc/crashsdk/b;->H()V

    return-void
.end method

.method static b(Landroid/content/Context;)V
    .locals 11

    const-string v0, "Restart APP"

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/uc/crashsdk/b;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "rt"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->o:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/uc/crashsdk/b;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {}, Lcom/uc/crashsdk/g;->h()I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-lez v5, :cond_2

    sub-long v7, v3, v0

    invoke-static {}, Lcom/uc/crashsdk/g;->h()I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-lez v5, :cond_3

    :cond_2
    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/crashsdk/b;->d(Ljava/lang/String;)Z

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    const/4 v2, 0x1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v5, "lastTime: "

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", currentTime: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", needRestart: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V

    if-nez v2, :cond_4

    return-void

    :cond_4
    :try_start_1
    invoke-static {v6}, Lcom/uc/crashsdk/d;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Lcom/uc/crashsdk/b;->K()Z

    return-void
.end method

.method public static b(Z)V
    .locals 10

    invoke-static {}, Lcom/uc/crashsdk/e;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    sget-boolean v1, Lcom/uc/crashsdk/b;->w:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/uc/crashsdk/g;->M()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "setForeground, reset sExited to false!!!"

    const-string v2, "crashsdk"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-boolean v0, Lcom/uc/crashsdk/b;->w:Z

    invoke-static {}, Lcom/uc/crashsdk/b;->V()V

    :cond_2
    invoke-static {}, Lcom/uc/crashsdk/e;->E()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-boolean v5, Lcom/uc/crashsdk/b;->W:Z

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/uc/crashsdk/b;->X:Z

    if-nez v5, :cond_5

    if-eqz p0, :cond_5

    sget-wide v5, Lcom/uc/crashsdk/b;->Z:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_5

    if-nez v1, :cond_5

    sub-long v5, v3, v5

    const-wide/32 v7, 0x1b7740

    cmp-long v9, v5, v7

    if-lez v9, :cond_5

    new-instance v5, Lcom/uc/crashsdk/a/e;

    const/16 v6, 0x68

    invoke-direct {v5, v6}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v6, 0x3e8

    invoke-static {v2, v5, v6, v7}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    :cond_5
    sput-wide v3, Lcom/uc/crashsdk/b;->Z:J

    sput-boolean p0, Lcom/uc/crashsdk/b;->X:Z

    if-eqz p0, :cond_6

    sput-boolean v2, Lcom/uc/crashsdk/b;->W:Z

    :cond_6
    sget-boolean v3, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v3, :cond_7

    invoke-static {p0}, Lcom/uc/crashsdk/JNIBridge;->nativeSetForeground(Z)V

    :cond_7
    sget-boolean v3, Lcom/uc/crashsdk/b;->w:Z

    if-eqz v3, :cond_8

    return-void

    :cond_8
    if-eqz v1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/uc/crashsdk/b;->Q()V

    invoke-static {}, Lcom/uc/crashsdk/b;->W()V

    if-eqz p0, :cond_a

    invoke-static {v0}, Lcom/uc/crashsdk/a;->a(Z)Z

    sget-boolean v0, Lcom/uc/crashsdk/b;->Y:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/uc/crashsdk/e;->A()V

    sput-boolean v2, Lcom/uc/crashsdk/b;->Y:Z

    :cond_a
    sget-boolean v0, Lcom/uc/crashsdk/b;->M:Z

    if-nez v0, :cond_b

    invoke-static {}, Lcom/uc/crashsdk/b;->X()V

    :cond_b
    invoke-static {p0}, Lcom/uc/crashsdk/e;->c(Z)V

    return-void
.end method

.method static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/b;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "st"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->n:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Z
    .locals 1

    sget v0, Lcom/uc/crashsdk/b;->H:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/b;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "bati"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->u:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    const-string v2, "Crash log directory was placed by a file!"

    const-string v3, "crashsdk"

    invoke-static {v3, v2, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/uc/crashsdk/b;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "hdr"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->v:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method static f()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/uc/crashsdk/b;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->p:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/uc/crashsdk/b;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "authu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->q:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/uc/crashsdk/b;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "statu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->r:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method static i()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/uc/crashsdk/b;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "poli"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->s:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method static j()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/uc/crashsdk/b;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/b;->t:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/uc/crashsdk/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bvu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static l()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static m()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/uc/crashsdk/b;->N()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static n()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/b;->x:Z

    return v0
.end method

.method static o()Z
    .locals 6

    sget-boolean v0, Lcom/uc/crashsdk/b;->I:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/uc/crashsdk/b;->J:Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->P()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/uc/crashsdk/b;->J:Z

    :goto_1
    sput-boolean v1, Lcom/uc/crashsdk/b;->I:Z

    :cond_2
    sget-boolean v0, Lcom/uc/crashsdk/b;->J:Z

    return v0
.end method

.method static p()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/b;->Q()V

    sget-boolean v0, Lcom/uc/crashsdk/b;->z:Z

    return v0
.end method

.method static q()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/b;->Q()V

    sget-boolean v0, Lcom/uc/crashsdk/b;->A:Z

    return v0
.end method

.method static r()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/b;->w:Z

    return v0
.end method

.method public static s()V
    .locals 12

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->d(Ljava/lang/String;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->x:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/uc/crashsdk/b;->z:Z

    sput-boolean v1, Lcom/uc/crashsdk/b;->A:Z

    sput-boolean v1, Lcom/uc/crashsdk/b;->B:Z

    sput-boolean v1, Lcom/uc/crashsdk/b;->C:Z

    sput-boolean v1, Lcom/uc/crashsdk/b;->D:Z

    sput-boolean v1, Lcom/uc/crashsdk/b;->E:Z

    const-string v2, ".st"

    const-string v3, ".wa"

    const-string v4, ".callback"

    const-string v5, ".ctn"

    const-string v6, ".ctj"

    const-string v7, ".cta"

    const-string v8, ".signal"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    const-string v4, "authu"

    const-string v5, "statu"

    const-string v6, "poli"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x7

    if-ge v9, v10, :cond_1

    aget-object v10, v2, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_3

    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x4

    if-ge v10, v11, :cond_3

    aget-object v11, v3, v10

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz v9, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "delete file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "crashsdk"

    invoke-static {v9, v8}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/uc/crashsdk/b;->W()V

    return-void
.end method

.method public static t()V
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/b;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/b;->w:Z

    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/uc/crashsdk/e;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->d(Ljava/lang/String;)Z

    invoke-static {}, Lcom/uc/crashsdk/b;->V()V

    invoke-static {}, Lcom/uc/crashsdk/b;->W()V

    return-void
.end method

.method static u()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static v()Z
    .locals 1

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static w()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/b;->W:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/b;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static x()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/b;->X:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uc/crashsdk/b;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static y()Z
    .locals 1

    sget-boolean v0, Lcom/uc/crashsdk/b;->X:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uc/crashsdk/b;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static z()V
    .locals 2

    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    return-void
.end method
