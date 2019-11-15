.class Lcom/shenma/speechrecognition/af;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shenma/speechrecognition/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/shenma/speechrecognition/af;-><init>()V

    return-void
.end method

.method public static a()Lcom/shenma/speechrecognition/af;
    .locals 1

    invoke-static {}, Lcom/shenma/speechrecognition/i;->a()Lcom/shenma/speechrecognition/af;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ShenmaSpeech"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/speechrecognition/af;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/shenma/speechrecognition/af;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/shenma/speechrecognition/af;->a:Landroid/content/SharedPreferences;

    const-string v1, "cookie"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/shenma/speechrecognition/af;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
