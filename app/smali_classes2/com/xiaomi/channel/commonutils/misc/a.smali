.class public Lcom/xiaomi/channel/commonutils/misc/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static f:Z

.field public static final g:Z

.field public static final h:Z

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/misc/c;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "ONEBOX"

    :goto_0
    sput-object v0, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    const-string v3, "2A2FE0D7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/a;->b:Z

    sget-boolean v0, Lcom/xiaomi/channel/commonutils/misc/a;->b:Z

    if-nez v0, :cond_0

    const-string v0, "DEBUG"

    sget-object v3, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/a;->c:Z

    const-string v0, "LOGABLE"

    sget-object v3, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/a;->d:Z

    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    const-string v3, "YY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/a;->e:Z

    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    const-string v3, "TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/a;->f:Z

    const-string v0, "BETA"

    sget-object v3, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/channel/commonutils/misc/a;->g:Z

    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    const-string v3, "RC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/xiaomi/channel/commonutils/misc/a;->h:Z

    sput v2, Lcom/xiaomi/channel/commonutils/misc/a;->i:I

    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    const-string v1, "SANDBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/channel/commonutils/misc/a;->i:I

    :goto_2
    return-void

    :cond_2
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/xiaomi/channel/commonutils/misc/a;->a:Ljava/lang/String;

    const-string v1, "ONEBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    sput v0, Lcom/xiaomi/channel/commonutils/misc/a;->i:I

    goto :goto_2

    :cond_5
    sput v2, Lcom/xiaomi/channel/commonutils/misc/a;->i:I

    goto :goto_2
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/xiaomi/channel/commonutils/misc/a;->i:I

    return-void
.end method

.method public static a()Z
    .locals 2

    sget v0, Lcom/xiaomi/channel/commonutils/misc/a;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    sget v0, Lcom/xiaomi/channel/commonutils/misc/a;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/xiaomi/channel/commonutils/misc/a;->i:I

    return v0
.end method
