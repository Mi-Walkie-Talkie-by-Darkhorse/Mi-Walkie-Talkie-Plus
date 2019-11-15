.class public Lcom/amap/api/col/sl/es;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"


# instance fields
.field public a:Z

.field b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Lcom/amap/api/col/sl/j;

.field private g:Landroid/content/ServiceConnection;

.field private h:Landroid/content/ServiceConnection;

.field private i:Landroid/content/ServiceConnection;

.field private j:Landroid/content/Intent;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/sl/es;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/es;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/col/sl/es;->a:Z

    iput-object v2, p0, Lcom/amap/api/col/sl/es;->f:Lcom/amap/api/col/sl/j;

    iput-object v2, p0, Lcom/amap/api/col/sl/es;->g:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/amap/api/col/sl/es;->h:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/amap/api/col/sl/es;->i:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->j:Landroid/content/Intent;

    const-string v0, "com.autonavi.minimap"

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->k:Ljava/lang/String;

    const-string v0, "com.amap.api.service.AMapService"

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->l:Ljava/lang/String;

    const-string v0, "com.autonavi.minimap.LBSConnectionService"

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->m:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/col/sl/es;->n:Z

    iput-boolean v1, p0, Lcom/amap/api/col/sl/es;->o:Z

    iput-boolean v1, p0, Lcom/amap/api/col/sl/es;->p:Z

    iput-boolean v1, p0, Lcom/amap/api/col/sl/es;->q:Z

    iput-boolean v1, p0, Lcom/amap/api/col/sl/es;->r:Z

    iput-boolean v1, p0, Lcom/amap/api/col/sl/es;->s:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->t:Ljava/util/List;

    iput-boolean v1, p0, Lcom/amap/api/col/sl/es;->u:Z

    const-string v0, "invaid type"

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->v:Ljava/lang/String;

    const-string v0, "empty appkey"

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->w:Ljava/lang/String;

    const-string v0, "refused"

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->x:Ljava/lang/String;

    const-string v0, "failed"

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->y:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/col/sl/es;->b:Z

    iput-object p1, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/col/sl/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/ff;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/bv;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConnectionServiceManager"

    const-string v2, "ConnectionServiceManager"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)Lcom/amap/api/col/sl/ev;
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/bv;->b(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    const-string v2, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/ff;->b([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/sl/bv;->b(Ljava/lang/String;)[B

    move-result-object v2

    :try_start_1
    invoke-static {v0, v2}, Lcom/amap/api/col/sl/ff;->a([B[B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "error"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "error"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/sl/es;->e:Z

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/sl/es;->w:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/sl/es;->e:Z

    :cond_3
    iget-object v2, p0, Lcom/amap/api/col/sl/es;->x:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/col/sl/es;->e:Z

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/sl/es;->y:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v2, Lcom/amap/api/col/sl/es;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parseData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "ConnectionServiceManager"

    const-string v3, "parseData part"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    :try_start_2
    new-instance v0, Lcom/amap/api/col/sl/ev;

    const-string v2, ""

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/ev;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/amap/api/col/sl/ev;->b(Lorg/json/JSONObject;)V

    const-string v2, "lbs"

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/ev;->setProvider(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/ev;->setLocationType(I)V

    const-string v2, "WGS84"

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/sl/fq;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->getLatitude()D

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/amap/api/col/sl/fr;->a(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/col/sl/ev;->setLatitude(D)V

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/sl/ev;->setLongitude(D)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/es;Lcom/amap/api/col/sl/j;)Lcom/amap/api/col/sl/j;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/es;->f:Lcom/amap/api/col/sl/j;

    return-object p1
.end method

.method private f()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fp;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "appkey"

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/sl/es;->m:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/es;->o:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->o:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/sl/fp;->n()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/sl/es;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/amap/api/col/sl/es;->k:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/sl/es;->h:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/es;->o:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->n:Z

    if-eqz v0, :cond_0

    :cond_1
    iput-boolean v5, p0, Lcom/amap/api/col/sl/es;->r:Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private g()Lcom/amap/api/col/sl/ev;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/col/sl/es;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/sl/es;->n:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const-string v3, "corse"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appkey"

    iget-object v3, p0, Lcom/amap/api/col/sl/es;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "opensdk"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->f:Lcom/amap/api/col/sl/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->f:Lcom/amap/api/col/sl/j;

    invoke-interface {v2, v1}, Lcom/amap/api/col/sl/j;->a(Landroid/os/Bundle;)I

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/amap/api/col/sl/es;->a(Landroid/os/Bundle;)Lcom/amap/api/col/sl/ev;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ConnectionServiceManager"

    const-string v3, "sendCommand"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->g:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/es;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->h:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/es;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->i:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/es;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->t:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_3

    :cond_3
    iput-object v4, p0, Lcom/amap/api/col/sl/es;->f:Lcom/amap/api/col/sl/j;

    iput-object v4, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    iput-object v4, p0, Lcom/amap/api/col/sl/es;->f:Lcom/amap/api/col/sl/j;

    iput-object v4, p0, Lcom/amap/api/col/sl/es;->g:Landroid/content/ServiceConnection;

    iput-object v4, p0, Lcom/amap/api/col/sl/es;->h:Landroid/content/ServiceConnection;

    iput-object v4, p0, Lcom/amap/api/col/sl/es;->i:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/es;->e:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/es;->a:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/es;->n:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/es;->o:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/es;->p:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/es;->b:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/es;->u:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/es;->q:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/es;->r:Z

    iput-boolean v3, p0, Lcom/amap/api/col/sl/es;->s:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v4, p0, Lcom/amap/api/col/sl/es;->t:Ljava/util/List;

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->g:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/es$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/es$1;-><init>(Lcom/amap/api/col/sl/es;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->g:Landroid/content/ServiceConnection;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->h:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/sl/es$2;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/es$2;-><init>(Lcom/amap/api/col/sl/es;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->h:Landroid/content/ServiceConnection;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->i:Landroid/content/ServiceConnection;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/sl/es$3;

    invoke-direct {v0, p0}, Lcom/amap/api/col/sl/es$3;-><init>(Lcom/amap/api/col/sl/es;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/es;->i:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConnectionServiceManager"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->u:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fp;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->j:Landroid/content/Intent;

    const-string v1, "appkey"

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->j:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/sl/es;->l:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/es;->j:Landroid/content/Intent;

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/es;->n:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->n:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amap/api/col/sl/fp;->m()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->j:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/amap/api/col/sl/es;->k:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/es;->j:Landroid/content/Intent;

    iget-object v3, p0, Lcom/amap/api/col/sl/es;->g:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/es;->n:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->n:Z

    if-eqz v0, :cond_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/es;->q:Z

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/col/sl/es;->f()V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/es;->d()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    iput-boolean v5, p0, Lcom/amap/api/col/sl/es;->u:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final d()V
    .locals 8

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/sl/es;->u:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/fp;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->y()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/sl/fs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/col/sl/fs;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fs;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fs;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fs;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/col/sl/fs;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/col/sl/fs;->d()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/amap/api/col/sl/fs;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/amap/api/col/sl/es;->t:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/sl/es;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/sl/es;->i:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/es;->p:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ConnectionServiceManager"

    const-string v2, "bindOtherService 1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ConnectionServiceManager"

    const-string v2, "bindOtherService"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iput-boolean v7, p0, Lcom/amap/api/col/sl/es;->s:Z

    goto/16 :goto_0
.end method

.method public final e()Lcom/amap/api/col/sl/ev;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/amap/api/col/sl/fp;->l()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/sl/es;->c()V

    const/4 v1, 0x4

    :goto_1
    if-lez v1, :cond_2

    iget-boolean v2, p0, Lcom/amap/api/col/sl/es;->a:Z

    if-nez v2, :cond_2

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/col/sl/es;->a:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/sl/es;->g()Lcom/amap/api/col/sl/ev;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method
