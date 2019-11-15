package com.bumptech.glide.load.a;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.support.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamLocalUriFetcher */
public class l extends j<InputStream> {
    private static final UriMatcher a = new UriMatcher(-1);

    static {
        a.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        a.addURI("com.android.contacts", "contacts/#/photo", 2);
        a.addURI("com.android.contacts", "contacts/#", 3);
        a.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        a.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public l(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public InputStream b(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        InputStream c = c(uri, contentResolver);
        if (c != null) {
            return c;
        }
        throw new FileNotFoundException("InputStream is null for " + uri);
    }

    private InputStream c(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        switch (a.match(uri)) {
            case 1:
            case 5:
                Uri lookupContact = Contacts.lookupContact(contentResolver, uri);
                if (lookupContact != null) {
                    return a(contentResolver, lookupContact);
                }
                throw new FileNotFoundException("Contact cannot be found");
            case 3:
                return a(contentResolver, uri);
            default:
                return contentResolver.openInputStream(uri);
        }
    }

    @TargetApi(14)
    private InputStream a(ContentResolver contentResolver, Uri uri) {
        return Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    /* access modifiers changed from: protected */
    public void a(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @NonNull
    public Class<InputStream> d() {
        return InputStream.class;
    }
}
