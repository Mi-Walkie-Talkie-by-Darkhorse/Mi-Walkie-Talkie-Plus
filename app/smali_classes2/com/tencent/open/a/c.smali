.class public Lcom/tencent/open/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:I = 0x3e

.field public static b:I = 0x3c

.field public static c:Ljava/lang/String; = "OpenSDK.Client.File.Tracer"

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:J

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:I

.field public static n:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tencent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "msflogs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tencent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mobileqq"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/a/c;->d:Ljava/lang/String;

    const-string v0, ".log"

    .line 2
    sput-object v0, Lcom/tencent/open/a/c;->e:Ljava/lang/String;

    const-wide/32 v0, 0x800000

    .line 3
    sput-wide v0, Lcom/tencent/open/a/c;->f:J

    const/high16 v0, 0x40000

    .line 4
    sput v0, Lcom/tencent/open/a/c;->g:I

    const/16 v0, 0x400

    .line 5
    sput v0, Lcom/tencent/open/a/c;->h:I

    const/16 v0, 0x2710

    .line 6
    sput v0, Lcom/tencent/open/a/c;->i:I

    const-string v0, "debug.file.blockcount"

    .line 7
    sput-object v0, Lcom/tencent/open/a/c;->j:Ljava/lang/String;

    const-string v0, "debug.file.keepperiod"

    .line 8
    sput-object v0, Lcom/tencent/open/a/c;->k:Ljava/lang/String;

    const-string v0, "debug.file.tracelevel"

    .line 9
    sput-object v0, Lcom/tencent/open/a/c;->l:Ljava/lang/String;

    const/16 v0, 0x18

    .line 10
    sput v0, Lcom/tencent/open/a/c;->m:I

    const-wide/32 v0, 0x240c8400

    .line 11
    sput-wide v0, Lcom/tencent/open/a/c;->n:J

    return-void
.end method
