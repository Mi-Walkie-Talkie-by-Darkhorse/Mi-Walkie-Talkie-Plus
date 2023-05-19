.class public final synthetic Lcom/shanlitech/et/web/tob/api/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final synthetic a:Lcom/shanlitech/et/web/tob/api/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shanlitech/et/web/tob/api/a;

    invoke-direct {v0}, Lcom/shanlitech/et/web/tob/api/a;-><init>()V

    sput-object v0, Lcom/shanlitech/et/web/tob/api/a;->a:Lcom/shanlitech/et/web/tob/api/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p1}, Lcom/shanlitech/et/web/tob/api/b;->c(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
