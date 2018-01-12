LocationManager locManager;
LocationListener locListener;
MyLocation myLocation;

public class MyLocation extends Service implements LocationListener{  
  boolean isGPS = false; 
  
  Location location;
  
  public boolean canAccessGPS(){
    try{
      locManager = (LocationManager) context.getSystemService(LOCATION_SERVICE);
      isGPS = locManager.isProviderEnabled(LocationManager.GPS_PROVIDER);
    }catch (Exception e) {}
   return isGPS;
  }
  
  public void onLocationChanged(Location location) {   
    latitude = location.getLatitude();
    longitude = location.getLongitude();
    altitude = location.getAltitude();
   }
   
   public void onProviderDisabled(String arg0) {}
   
   public void onProviderEnabled(String provider) {}
   
   public void onStatusChanged(String provider, int status, Bundle extras) {}    
   
   public IBinder onBind(Intent arg0) {
        return null;
   }
   
   public void showSettings(){
      AlertDialog.Builder alertDialog = new AlertDialog.Builder(activity);
      alertDialog.setTitle("GPS is settings");
      alertDialog.setMessage("GPS is not enabled. Do you want to go to settings menu?");
      alertDialog.setPositiveButton("Settings", new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialog,int which) {
          Intent intent = new Intent(Settings.ACTION_LOCATION_SOURCE_SETTINGS);
          activity.startActivity(intent);
        }
      });
      alertDialog.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialog, int which) {
          dialog.cancel();
        }
      });

      alertDialog.show();
  }
}